'use strict';
const fs = require('node:fs');
const path = require('node:path');
const { Compiler } = require('inkjs/full');

const root = path.resolve(__dirname, '..');
const input = path.join(root, 'ink', 'wards_point_entry.ink');
const output = path.join(root, 'web', 'story.json');
const runtime = path.join(root, 'node_modules', 'inkjs', 'dist', 'ink.js');
const browserRuntime = path.join(root, 'web', 'ink.js');
const story = new Compiler(fs.readFileSync(input, 'utf8')).Compile();
if (!story) throw new Error('Ink compilation returned no story');
if (!fs.existsSync(runtime)) throw new Error('Browser runtime missing: ' + runtime);
fs.mkdirSync(path.dirname(output), { recursive: true });
fs.writeFileSync(output, story.ToJson(), 'utf8');
fs.copyFileSync(runtime, browserRuntime);
console.log('Compiled', path.relative(root, input), '→', path.relative(root, output));
console.log('Bundled', path.relative(root, browserRuntime));
