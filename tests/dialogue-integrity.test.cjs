'use strict';
// Every source-authored spoken line must survive extraction into the Ink player.
// The original vault remains authoritative; this test guards against truncation
// such as the previously missing multi-line Bastion "Look" speech.
const test = require('node:test');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');

const root = path.resolve(__dirname, '..');
const ink = normalize(fs.readFileSync(path.join(root, 'ink/wards_point_entry.ink'), 'utf8'));
const original = path.join(root, 'source/06_Dialogue_Working/06_Dialogue_Beats');
const files = [
  ['WPL_01_HOOK.md', 70],
  ['WPL_03_COMPETING_CLAIM.md', 29],
  ['WPL_04_MAIN_FLOOR.md', 5],
  ['WPL_05_BASEMENT.md', 4],
  ['WPL_06_ATRIUM.md', 98],
  ['WPL_07_DEBRIEF.md', 56]
];
function normalize(s) {
  return s.replace(/\[\[([^\]|]+)\|([^\]]+)\]\]/g, '$2')
    .replace(/\[\[([^\]]+)\]\]/g, '$1')
    .replace(/\s+/g, ' ').trim();
}
function quotedPassages(text) {
  const all = [];
  const lines = text.split(/\r?\n/);
  for (let i=0; i<lines.length; i++) {
    let line = lines[i].trim();
    if (!line.startsWith('"')) continue;
    let numberOfQuotes = (line.match(/"/g)||[]).length;
    while (numberOfQuotes % 2 !== 0 && i + 1 < lines.length) {
      line += ' ' + lines[++i].trim();
      numberOfQuotes += (lines[i].match(/"/g)||[]).length;
    }
    assert.equal(numberOfQuotes % 2, 0, 'Unclosed source dialogue quote: ' + line.slice(0,100));
    const ending = line.lastIndexOf('"');
    assert.ok(ending > 0, 'Empty/missing quoted line');
    all.push(normalize(line.slice(1, ending)));
  }
  return all;
}
for (const [name,count] of files) {
  test('every original spoken line from '+name+' appears in the adaptation', () => {
    const source = fs.readFileSync(path.join(original,name),'utf8');
    const passages = quotedPassages(source);
    assert.equal(passages.length,count,'Unexpected change in source quote inventory');
    for (const quote of passages) {
      if (quote.includes('" [pause] "')) {
        const fragments = quote.split('" [pause] "');
        for (const fragment of fragments) {
          assert.ok(ink.includes(normalize(fragment)), 'Missing paused dialogue fragment: ' + fragment.slice(0,120));
        }
        assert.ok(ink.includes('Eli pauses.'), 'The authored pause must remain visible');
      } else if (quote.includes('[returns to normal voice and separation]')) {
        // Original one quotation spans two source lines with a mid-line stage cue.
        for (const fragment of quote.split('[returns to normal voice and separation]')) {
          assert.ok(ink.includes(normalize(fragment)), 'Missing multiline fragment: '+fragment.slice(0,120));
        }
      } else {
        assert.ok(ink.includes(quote), 'Missing quoted source passage from '+name+': '+quote.slice(0,160));
      }
    }
  });
}
