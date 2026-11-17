# Entry vertical slice — V0.01

This Ink adaptation implements the initial two faction briefings, first library entrance, kiosk key, locking the front door, and the competing radio introduction. It is **not** a full quest conversion.

## Source fidelity

- Both briefings reproduce the source's **39 Peacekeeper** or **29 Bastion** spoken passages, extracted from `WPL_01_HOOK.md`.
- Both rival radio introductions reproduce **12 Bastion** or **17 Peacekeeper** spoken passages, extracted from `WPL_03_COMPETING_CLAIM.md`.
- Speaker roles remain neutral (`CHARACTER_A` / `CHARACTER_B` in the original; faction-specific role labels here). Canonical character names are not invented.
- Obsidian wiki-link markup inside dialogue is rendered as its visible label, without changing the spoken words.
- The three opening descriptive sentences come from `WPL_02_ARRIVAL`. Navigational prose and menu choices are **new connective adaptation work**, not an assertion of original authored dialogue.

The starting prompt simulates existing faction relationship standings in the original design. It does **not** choose the final owner. The original ownership rules remain in `source/` and are not implemented in the current slice.

## Play locally

```bash
npm install
npm run check
python3 -m http.server 8000 --directory web
```

Then open `http://localhost:8000`. A static HTTP server is necessary to load `story.json`; `file://` has browser fetch restrictions.

**Reader UX:** Continue reading reveals five passages at a time. Reveal through next choice shows the remaining passages until an actual Ink decision point. It does not alter or skip story state. The mission state sidebar is presentation-only and reads Ink variables.

## Not implemented yet

Main floor, basement, kitchen boss, atrium, optional consultations, incomplete exit recovery, ownership handover, loss follow-up and downstream world changes. The current flow ends after the radio introduction.

## Acceptance

`npm run check` compiles the Ink and runs tests for both briefing/rival pairings, the critical distinction between key possession and door security, exploration without premature state mutation, and the prototype ending. GitHub Actions automatically performs this check on push/PR. A successfully uploaded build artifact is not equivalent to a published GitHub Pages site.
