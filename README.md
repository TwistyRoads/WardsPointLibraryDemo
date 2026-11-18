# Wards Point Library — Playable Ink Quest

**An original, independent, text-only narrative-design and game-writing portfolio sample by Joseph Kristiansen.** Based on the Wards Point Library quest design vault.

**Play on the web:** https://twistyroads.github.io/WardsPointLibraryDemo/

> **Release status:** V0.03, complete playable narrative loop, prepared on `feature/full-debrief-and-resolution`. The public website shows the previous version until this branch is reviewed, merged, and Pages successfully deploys the new build.

## The experience

Eli is an independent actor asked to secure a contested public library. The Peacekeepers argue for order, continuity and long-term preservation; Bastion advocates survival through community control and autonomy. The player:

1. Selects an **inherited faction relationship context** for the standalone sample. This determines the **first briefing only**.
2. Hears the opening argument, enters the library, retrieves the entrance key and physically locks the main doors. **Taking the key is not the same as securing the entrance.**
3. Hears the competing radio claim, clears the main floor and basement, and encounters environmental evidence about the library's future potential.
4. Defeats the kitchen threat as an abstract text action, clears the separate atrium deadbolt, and enters the atrium.
5. Optionally questions **both, either, or neither** faction. The four claimant-role variants have three original questions apiece; none commits ownership.
6. Exits the library; successful security requires five states: both floors clear, boss defeated, entrance secured, and qualified atrium entry. A failed departure permits a recoverable return. An incomplete report cannot award ownership.
7. **Visits whichever faction contact Eli chooses to report to first.** The first *successful* report and physical key handover irrevocably determine ownership. There is **no explicit 'Choose faction' ownership menu**.
8. Can return to the losing contact later for a distinct, role-sensitive response. Its reputation cost is recorded **once only**, never as a second ownership decision.

The game ends with a source-grounded **possible-future outlook** for the winning faction. The vault defines the benefits and risks of both governance choices but leaves actual later city transformation, NPC populations and numeric reputation changes to downstream production. The demo therefore records consequence *availability*, not invented future events.

## Play locally

Requires Node.js 20+ and a simple local HTTP server:

```bash
npm install
npm run check
python3 -m http.server 8000 --directory web
```

Open http://localhost:8000. Opening the HTML via `file://` will not reliably load the compiled `story.json`.

The reader supports **Continue reading** (five passages), **Reveal through next choice**, **Restart**, and an always-current read-only mission-state panel. There are no accounts, backend, images, or save-data dependencies; restart explores another route.

## Implementation

- `source/` — selected **unaltered original Markdown** design specifications and dialogue from the Obsidian vault. The selection is not the entire archive.
- `ink/wards_point_entry.ink` — single complete narrative implementation, including the branching WPL_07 debrief.
- `web/` — accessible responsive static HTML/CSS/JS reader powered by inkjs.
- `scripts/compile.cjs` — compiles Ink and copies the browser runtime.
- `tests/` — automated compilation, narrative route, continuity, and **source-dialogue integrity** tests.
- `docs/` — original source traceability, implementation decisions, release status and historical vertical-slice documentation.
- `.github/workflows/ink-check.yml` — check and preview artifact for every relevant branch / PR.
- `.github/workflows/pages.yml` — rebuild and publish on merged `main`.

The spoken dialogue is derived from the authored WPL_01, WPL_03, WPL_06 and WPL_07 scripts. Original Eli barks appear during exploration. Traversal, text-only combat abstractions, stage-direction rendering and connective interaction writing are adaptation work, not additional claims about the original game's implementation.

## Source-defined boundaries

- **Relationship setup:** The original campaign compares faction relationship values and defaults to Peacekeepers on ties or missing data. This standalone demo exposes those two starting contexts rather than claiming to integrate a campaign.
- **No combat simulation:** Defeating infected and opening blocked doors are deliberate text actions, not stealth, combat or level-design systems.
- **No forced evidence checklist:** Observations add context, but source completion is governed by security conditions.
- **Reputation:** The losing faction's reputation consequence is recorded as a one-time Boolean event. The source explicitly leaves its numeric magnitude to the host game; none is invented.
- **World-state:** Owner-specific later consequence paths become available after handover. The demo does not fabricate an occupied or transformed library.
- **Original pacing:** The original full-length Peacekeeper briefing remains intact as a deliberate unedited baseline for later editorial review.

## Testing and review

Run `npm run check` to compile and execute all tests. The suite covers both opening variants, all 12 atrium question scripts, missed security and recovery, four first-report/winner/loser pairings, repeat-report protection, post-ownership routing, and direct quote checks against all seven dialogue source beats.

See `docs/DEBRIEF_IMPLEMENTATION.md` and `docs/TRACEABILITY.md` for the exact state/event mapping and fidelity boundaries.

## Attribution

Original quest design and writing © **Joseph Kristiansen**, all rights reserved. Original independent, noncommercial **Dying Light 2–style** narrative design exercise, **not** a commissioned, official, affiliated or endorsed Techland / Dying Light 2 production asset. No reuse or redistribution license is granted for original narrative material unless separately added.
