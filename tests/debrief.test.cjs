'use strict';
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const test = require('node:test');
const { Compiler } = require('inkjs/full');

const ink = fs.readFileSync(path.join(__dirname, '../ink/wards_point_entry.ink'), 'utf8');
const source = fs.readFileSync(path.join(__dirname, '../source/06_Dialogue_Working/06_Dialogue_Beats/WPL_07_DEBRIEF.md'), 'utf8');

function advance(story) {
  const lines = [];
  let steps = 0;
  while (story.canContinue) {
    assert.ok(++steps < 3000, 'Ink flow must reach a choice or ending');
    lines.push(story.Continue().trim());
  }
  return { lines, choices: story.currentChoices.map(c => c.text.trim()) };
}
function choose(story, label) {
  const opts = story.currentChoices;
  const index = opts.findIndex(c => c.text.includes(label));
  assert.ok(index >= 0, 'Expected choice "' + label + '", found: ' + opts.map(c => c.text).join(' | '));
  story.ChooseChoiceIndex(index);
  return advance(story);
}
function value(story, name) { return story.variablesState.$(name); }
function start(initial) {
  const story = new Compiler(ink).Compile();
  assert.ok(story, 'Ink compiles');
  advance(story);
  choose(story, initial === 'PK' ? 'Peacekeeper standing equal' : 'Bastion standing higher');
  return story;
}
function takeKeyAndLock(story) {
  choose(story, 'Look behind the information kiosk');
  choose(story, 'Take the key');
  assert.equal(value(story, 'entrance_secured'), false);
  choose(story, 'Try to lock the main entrance');
  assert.equal(value(story, 'radio_call_complete'), true);
}
function enterAtrium(story) {
  choose(story, 'Climb the service shaft');
  if (!value(story, 'boss_defeated')) choose(story, 'Confront the infected occupying the kitchen');
  if (!value(story, 'atrium_door_unlocked')) choose(story, 'Inspect and clear the atrium door deadbolt');
  choose(story, 'Open the atrium doors');
}
function completeBuilding(initial) {
  const story = start(initial);
  takeKeyAndLock(story);
  choose(story, 'Explore the main floor');
  choose(story, 'Clear the remaining infected on the main floor');
  choose(story, 'Descend to Research & Archives');
  choose(story, 'Clear the remaining infected in the basement');
  enterAtrium(story);
  choose(story, 'Leave Wards Point through the far atrium exit');
  assert.equal(value(story, 'secured'), true);
  assert.equal(value(story, 'ownership'), '');
  assert.equal(value(story, 'pk_eligible'), true);
  assert.equal(value(story, 'bastion_eligible'), true);
  return story;
}
function visit(story, faction) {
  return choose(story, faction === 'PK' ? 'Speak with the Peacekeeper contact' : 'Speak with the Bastion contact');
}

const variants = [
  { initial: 'PK', winner: 'PK', win: /We'll make sure it matters/, loss: /And you gave it to them/, loser: 'BASTION' },
  { initial: 'PK', winner: 'BASTION', win: /You actually came to us first/, loss: /They have the key/, loser: 'PK' },
  { initial: 'BASTION', winner: 'BASTION', win: /I'm not gonna sit here admiring the key/, loss: /I thought you might come to us/, loser: 'PK' },
  { initial: 'BASTION', winner: 'PK', win: /You didn't have to/, loss: /Guess we know where we stand/, loser: 'BASTION' },
];

for (const scenario of variants) {
  test('handover '+scenario.initial+' → '+scenario.winner+' and delayed '+scenario.loser+' response exactly once', () => {
    const story = completeBuilding(scenario.initial);
    const winner = visit(story, scenario.winner);
    assert.match(winner.lines.join('\n'), scenario.win);
    assert.equal(value(story, 'ownership'), scenario.winner);
    assert.equal(value(story, 'report_complete'), true);
    assert.equal(value(story, 'key_obtained'), false);
    assert.equal(value(story, 'key_transferred'), true);
    assert.equal(value(story, 'pk_eligible'), false);
    assert.equal(value(story, 'bastion_eligible'), false);
    assert.equal(value(story, 'losing_response_pending'), true);
    assert.equal(value(story, 'losing_consequence_resolved'), false);
    assert.equal(value(story, 'enduring_path_available'), true);
    assert.equal(value(story, 'enduring_owner'), scenario.winner);
    assert.equal(value(story, 'pk_reputation_effect_recorded'), false);
    assert.equal(value(story, 'bastion_reputation_effect_recorded'), false);

    const ownerAgain = visit(story, scenario.winner);
    assert.match(ownerAgain.lines.join('\n'), /already has the key/);
    assert.doesNotMatch(ownerAgain.lines.join('\n'), scenario.win);
    assert.equal(value(story, 'ownership'), scenario.winner);

    const loss = visit(story, scenario.loser);
    assert.match(loss.lines.join('\n'), scenario.loss);
    assert.equal(value(story, 'losing_response_pending'), false);
    assert.equal(value(story, 'losing_consequence_resolved'), true);
    assert.equal(value(story, scenario.loser === 'PK' ? 'pk_reputation_effect_recorded' : 'bastion_reputation_effect_recorded'), true);
    assert.equal(value(story, scenario.winner === 'PK' ? 'pk_reputation_effect_recorded' : 'bastion_reputation_effect_recorded'), false);
    assert.equal(value(story, 'ownership'), scenario.winner);
    assert.equal(value(story, 'enduring_owner'), scenario.winner);

    const loserAgain = visit(story, scenario.loser);
    assert.match(loserAgain.lines.join('\n'), /already answered/);
    assert.doesNotMatch(loserAgain.lines.join('\n'), scenario.loss);
    assert.equal(value(story, 'ownership'), scenario.winner);
    assert.equal(value(story, 'losing_consequence_resolved'), true);

    const future = choose(story, "Consider the library's possible future");
    assert.match(future.lines.join('\n'), /not simulate later occupation or transformation/);
    const finish = choose(story, 'Finish the Wards Point story');
    assert.match(finish.lines.join('\n'), /has answered/);
    choose(story, 'End the story');
    assert.equal(story.currentChoices.length, 0);
    assert.equal(story.canContinue, false);
  });
}

test('report attempt before securing fails without consuming key or awarding ownership, then recovers', () => {
  const story = start('PK');
  choose(story, 'Descend toward Research & Archives');
  enterAtrium(story);
  choose(story, 'Leave Wards Point through the far atrium exit');
  assert.equal(value(story, 'secured'), false);
  const premature = choose(story, 'Attempt an incomplete report to the Peacekeepers');
  assert.match(premature.lines.join('\n'), /You left the front entrance unsecured/);
  assert.equal(value(story, 'ownership'), '');
  assert.equal(value(story, 'report_complete'), false);
  assert.equal(value(story, 'key_transferred'), false);
  assert.equal(value(story, 'enduring_path_available'), false);
  assert.equal(value(story, 'losing_response_pending'), false);
  assert.equal(value(story, 'pk_reputation_effect_recorded'), false);
  choose(story, 'Return to the public entrance and finish');
  takeKeyAndLock(story);
  choose(story, 'Explore the main floor');
  choose(story, 'Clear the remaining infected on the main floor');
  choose(story, 'Descend to Research & Archives');
  choose(story, 'Clear the remaining infected in the basement');
  enterAtrium(story);
  choose(story, 'Leave Wards Point through');
  const win = visit(story, 'BASTION');
  assert.match(win.lines.join('\n'), /You actually came to us first/);
  assert.equal(value(story, 'ownership'), 'BASTION');
});

test('post-ownership loser routing does not require WPL_SECURED to remain true', () => {
  const story = completeBuilding('BASTION');
  visit(story, 'PK');
  assert.equal(value(story, 'ownership'), 'PK');
  story.variablesState.$('secured', false); // Debug-only simulation of transient mission-state cleanup.
  const loser = visit(story, 'BASTION');
  assert.match(loser.lines.join('\n'), /Guess we know where we stand/);
  assert.equal(value(story, 'ownership'), 'PK');
  assert.equal(value(story, 'losing_consequence_resolved'), true);
});

test('ending before meeting losing claimant preserves an unresolved narrative obligation', () => {
  const story = completeBuilding('PK');
  visit(story, 'PK');
  const finish = choose(story, 'Finish the Wards Point story');
  assert.match(finish.lines.join('\n'), /response and reputation consequence remain unresolved/);
  assert.equal(value(story, 'losing_response_pending'), true);
  choose(story, 'End the story');
});

test('source contains all eight WPL_07 debrief branches', () => {
  const matches = [...source.matchAll(/^#### (PeaceKeeper|Bastion) (Win|Loss) -/gm)];
  assert.equal(matches.length, 8);
});
