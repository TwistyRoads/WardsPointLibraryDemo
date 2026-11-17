'use strict';
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const test = require('node:test');
const { Compiler } = require('inkjs/full');

const source = fs.readFileSync(path.join(__dirname, '../ink/wards_point_entry.ink'), 'utf8');

function game() {
  const story = new Compiler(source).Compile();
  assert.ok(story, 'Ink source compiles');
  return story;
}
function read(story) {
  const lines = [];
  for (let i = 0; story.canContinue && i < 3000; i++) lines.push(story.Continue().trim());
  assert.equal(story.canContinue, false, 'Reached choice or ending');
  return { lines, choices: story.currentChoices.map(c => c.text.trim()) };
}
function choose(story, text) {
  const index = story.currentChoices.findIndex(c => c.text.includes(text));
  assert.notEqual(index, -1, 'Missing choice: ' + text + '\nChoices: ' + story.currentChoices.map(c => c.text).join(' | '));
  story.ChooseChoiceIndex(index);
  return read(story);
}
const state = (s, name) => s.variablesState.$(name);
function start(initial) {
  const story = game();
  read(story);
  const brief = choose(story, initial === 'PK' ? 'Peacekeeper standing equal' : 'Bastion standing higher');
  assert.equal(state(story, 'initial_claimant'), initial);
  return { story, brief };
}
function lock(story) {
  choose(story, 'Look behind');
  choose(story, 'Take the key');
  assert.equal(state(story, 'entrance_secured'), false);
  const radio = choose(story, 'Try to lock');
  assert.equal(state(story, 'entrance_secured'), true);
  assert.equal(state(story, 'radio_call_complete'), true);
  return radio;
}
function clearAndReachKitchen(story) {
  choose(story, 'Explore the main floor');
  choose(story, 'Clear the remaining infected on the main floor');
  assert.equal(state(story, 'main_floor_cleared'), true);
  choose(story, 'Descend to Research & Archives');
  choose(story, 'Clear the remaining infected in the basement');
  assert.equal(state(story, 'basement_cleared'), true);
  choose(story, 'Climb the service shaft');
}
function enterAtrium(story) {
  if (!state(story, 'boss_defeated')) {
    choose(story, 'Confront the infected occupying the kitchen');
    assert.equal(state(story, 'boss_defeated'), true);
  }
  if (!state(story, 'atrium_door_unlocked')) {
    choose(story, 'Inspect and clear the atrium door deadbolt');
    assert.equal(state(story, 'atrium_reached'), false);
  }
  return choose(story, 'Open the atrium doors');
}

test('peacekeeper intro, key event and opposing radio; original brief preserved', () => {
  const {story, brief} = start('PK');
  assert.equal(brief.lines.filter(l => l.startsWith('Peacekeeper representative:') || l.startsWith('Eli:')).length, 39);
  choose(story, 'Try to lock');
  assert.equal(state(story, 'entrance_secured'), false);
  const radio = lock(story);
  assert.equal(radio.lines.filter(l => l.startsWith('Bastion radio contact:') || l.startsWith('Eli:')).length, 12);
  assert.match(radio.lines.join('\n'), /Then come to us first/);
  assert.equal(state(story, 'secured'), false);
});

test('Bastion opening selects Peacekeeper rival and leaves ownership uncommitted', () => {
  const {story, brief} = start('BASTION');
  assert.equal(brief.lines.filter(l => l.startsWith('Bastion representative:') || l.startsWith('Eli:')).length, 29);
  const radio = lock(story);
  assert.equal(radio.lines.filter(l => l.startsWith('Peacekeeper radio contact:') || l.startsWith('Eli:')).length, 17);
  assert.match(radio.lines.join('\n'), /chance to prove it/);
  assert.equal(state(story, 'initial_claimant'), 'BASTION');
});

test('physical boss, deadbolt and crossing are separate gates; both atrium calls optional and nonbinding', () => {
  const {story} = start('PK');
  lock(story);
  clearAndReachKitchen(story);
  assert.equal(state(story, 'atrium_reached'), false);
  choose(story, 'Confront the infected occupying the kitchen');
  assert.equal(state(story, 'boss_defeated'), true);
  assert.equal(state(story, 'atrium_door_unlocked'), false);
  choose(story, 'Inspect and clear the atrium door deadbolt');
  assert.equal(state(story, 'atrium_reached'), false);
  const atrium = choose(story, 'Open the atrium doors');
  assert.equal(state(story, 'atrium_reached'), true);
  assert.ok(atrium.choices.some(x => x.includes('Question the Peacekeepers')));
  const pk = choose(story, 'Question the Peacekeepers about their plan (1/3)');
  assert.match(pk.lines.join('\n'), /Not everyone, immediately/);
  assert.equal(state(story, 'pk_question_1'), true);
  assert.ok(!pk.choices.some(x => x.includes('Peacekeepers about their plan (1/3)')));
  const bas = choose(story, 'Question Bastion about their plan (1/3)');
  assert.match(bas.lines.join('\n'), /what you have, everyone gets to see|this place should belong to the people using it/i);
  const exit = choose(story, 'Leave Wards Point through');
  assert.equal(state(story, 'secured'), true);
  assert.equal(state(story, 'inside_atrium'), false);
  assert.equal(state(story, 'departed'), true);
  assert.match(exit.lines.join('\n'), /library is secured/i);
});

test('counter-claimant questions use the shorter earlier radio argument, not initial briefing', () => {
  const {story} = start('BASTION');
  lock(story);
  clearAndReachKitchen(story);
  enterAtrium(story);
  const pk = choose(story, 'Question the Peacekeepers about their plan (1/3)');
  assert.match(pk.lines.join('\n'), /what does 'process' actually mean here/i);
  const bas = choose(story, 'Question Bastion about their plan (1/3)');
  assert.match(bas.lines.join('\n'), /everyone gets to see/i);
  assert.equal(state(story, 'secured'), false);
  choose(story, 'Leave Wards Point through');
  assert.equal(state(story, 'secured'), true);
});

test('missing front door prevents qualified atrium/calls and invalidates clearances on exit; recovery does not respawn boss', () => {
  const {story} = start('PK');
  clearAndReachKitchen(story);
  assert.equal(state(story, 'entrance_secured'), false);
  const first = enterAtrium(story);
  assert.equal(state(story, 'atrium_reached'), false);
  assert.equal(state(story, 'radio_call_complete'), false);
  assert.ok(!first.choices.some(x => x.includes('Question Bastion')));
  const exit = choose(story, 'Leave Wards Point through');
  assert.equal(state(story, 'secured'), false);
  assert.equal(state(story, 'main_floor_cleared'), false);
  assert.equal(state(story, 'basement_cleared'), false);
  assert.equal(state(story, 'boss_defeated'), true);
  assert.ok(exit.choices.some(x => x.includes('Return through the main public entrance')));

  choose(story, 'Return through the main public entrance');
  assert.equal(state(story, 'recovery_visits'), 1);
  lock(story);
  clearAndReachKitchen(story);
  assert.equal(state(story, 'boss_defeated'), true);
  assert.ok(!story.currentChoices.some(x => x.text.includes('Confront the infected')));
  enterAtrium(story);
  assert.equal(state(story, 'atrium_reached'), true);
  choose(story, 'Leave Wards Point through');
  assert.equal(state(story, 'secured'), true);
});

test('evidence examination is optional, not a hidden completion checklist', () => {
  const {story} = start('BASTION');
  lock(story);
  clearAndReachKitchen(story);
  assert.equal(state(story, 'medicine_seen'), false);
  assert.equal(state(story, 'municipal_archive_seen'), false);
  enterAtrium(story);
  choose(story, 'Leave Wards Point through');
  assert.equal(state(story, 'secured'), true);
});
