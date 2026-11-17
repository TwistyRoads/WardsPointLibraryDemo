'use strict';
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const test = require('node:test');
const { Compiler } = require('inkjs/full');

const text = fs.readFileSync(path.join(__dirname, '../ink/wards_point_entry.ink'), 'utf8');

function createGame() {
  const story = new Compiler(text).Compile();
  assert.ok(story, 'Ink source compiles');
  return story;
}
function advanceToChoice(story) {
  const lines = [];
  for (let i = 0; story.canContinue && i < 2000; i++) {
    lines.push(story.Continue().trim());
  }
  assert.equal(story.canContinue, false, 'Story reached a choice or end within limit');
  return { lines, choices: story.currentChoices.map((c) => c.text.trim()) };
}
function choose(story, fragment) {
  const opts = story.currentChoices;
  const index = opts.findIndex((c) => c.text.includes(fragment));
  assert.notEqual(index, -1, 'Expected choice containing: ' + fragment + '; got ' + opts.map(c => c.text).join(' | '));
  story.ChooseChoiceIndex(index);
  return advanceToChoice(story);
}
function state(story, key) {
  return story.variablesState.$(key);
}

test('Peacekeeper briefing: key possession does not secure entrance; rival intro is triggered by lock', () => {
  const story = createGame();
  advanceToChoice(story);
  const brief = choose(story, 'Peacekeeper standing equal');
  assert.equal(state(story, 'initial_claimant'), 'PK');
  assert.equal(state(story, 'brief_complete'), true);
  assert.equal(state(story, 'entered'), true);
  assert.equal(state(story, 'entrance_secured'), false);
  assert.equal(state(story, 'radio_call_complete'), false);
  assert.equal(brief.lines.filter(l => l.startsWith('Peacekeeper representative:') || l.startsWith('Eli:')).length, 39);
  choose(story, 'Try to lock');
  assert.equal(state(story, 'entrance_secured'), false);
  choose(story, 'Look behind');
  choose(story, 'Leave the key');
  assert.equal(state(story, 'key_obtained'), false);
  choose(story, 'Look behind');
  choose(story, 'Take the key');
  assert.equal(state(story, 'key_obtained'), true);
  assert.equal(state(story, 'entrance_secured'), false);
  const radio = choose(story, 'Try to lock');
  assert.equal(state(story, 'entrance_secured'), true);
  assert.equal(state(story, 'radio_call_complete'), true);
  assert.equal(radio.lines.filter(l => l.startsWith('Bastion radio contact:') || l.startsWith('Eli:')).length, 12);
  assert.match(radio.lines.join('\n'), /Then come to us first/);
  assert.ok(radio.choices.some(x => x.includes('Finish the entry')));
});

test('Bastion briefing: matching Peacekeeper radio variant, ownership uncommitted', () => {
  const story = createGame();
  advanceToChoice(story);
  const brief = choose(story, 'Bastion standing higher');
  assert.equal(state(story, 'initial_claimant'), 'BASTION');
  assert.equal(brief.lines.filter(l => l.startsWith('Bastion representative:') || l.startsWith('Eli:')).length, 29);
  const stairs = choose(story, 'Examine the blocked stairs');
  assert.ok(stairs.choices.some(x => x.includes('Look behind')));
  choose(story, 'Look behind');
  choose(story, 'Take the key');
  const radio = choose(story, 'Try to lock');
  assert.equal(radio.lines.filter(l => l.startsWith('Peacekeeper radio contact:') || l.startsWith('Eli:')).length, 17);
  assert.match(radio.lines.join('\n'), /I'm asking you to give us the chance to prove it/);
  assert.equal(state(story, 'radio_call_complete'), true);
  assert.equal(state(story, 'entrance_secured'), true);
  assert.equal(Object.prototype.hasOwnProperty.call(story.variablesState, 'ownership'), false);
  choose(story, 'Finish the entry');
  assert.equal(story.currentChoices.length, 0);
  assert.equal(story.canContinue, false);
});

test('standalone navigation allows scouting without unintended state changes', () => {
  const story = createGame();
  advanceToChoice(story);
  choose(story, 'Bastion standing higher');
  choose(story, 'Scout the main floor');
  assert.equal(state(story, 'key_obtained'), false);
  assert.equal(state(story, 'entrance_secured'), false);
  assert.equal(state(story, 'radio_call_complete'), false);
  assert.ok(story.currentChoices.some(c => c.text.includes('Look behind')));
});
