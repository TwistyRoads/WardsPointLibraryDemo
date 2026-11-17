'use strict';
const fs = require('node:fs');
const path = require('node:path');
const { Compiler, CompilerOptions } = require('inkjs/full');

const root = path.resolve(__dirname, '..');
const input = path.join(root, 'ink', 'wards_point_entry.ink');
const output = path.join(root, 'web', 'story.json');
const runtime = path.join(root, 'node_modules', 'inkjs', 'dist', 'ink.js');
const browserRuntime = path.join(root, 'web', 'ink.js');
let story;
try {
  const diagnostics = (message, type) => console.error('Ink ' + type + ': ' + message);
  story = new Compiler(fs.readFileSync(input, 'utf8'), new CompilerOptions('wards_point_entry.ink', [], false, diagnostics)).Compile();
} catch (error) {
  // The distributed Ink compiler is minified into one line; printing the
  // exception's full stack floods CI and hides the useful diagnostic.
  console.error('Ink compilation failed:', error.message);
  process.exit(1);
}
if (!story) throw new Error('Ink compilation returned no story');
if (!fs.existsSync(runtime)) throw new Error('Browser runtime missing: ' + runtime);
fs.mkdirSync(path.dirname(output), { recursive: true });
fs.writeFileSync(output, story.ToJson(), 'utf8');
fs.copyFileSync(runtime, browserRuntime);
console.log('Compiled', path.relative(root, input), '→', path.relative(root, output));
console.log('Bundled', path.relative(root, browserRuntime));
