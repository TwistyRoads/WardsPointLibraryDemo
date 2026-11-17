# Wards Point Library — Interactive Narrative Demo

A text-only, browser-playable adaptation of **Joseph Kristiansen's Wards Point Library**, a noncommercial Dying Light 2–style quest design sample.

## Current milestone: entry vertical slice V0.01

The **first playable slice is implemented and tested on the development branch**. This is **not yet the full mission**.

It includes:

- Both full source-authored opening briefings (Peacekeepers and Bastion).
- First entrance into Wards Point, information kiosk key, blocked atrium stairs and exploratory navigation.
- The required distinction between possessing the key and **locking the front entrance**.
- Rival radio introduction triggered by the door event, with the correct opposing-faction variant.
- Browser reader, scene controls, restart, and a live Ink mission-state panel.

**Not implemented:** main floor clearance, basement, kitchen boss, atrium, optional radio consultations, early-exit recovery, report/handover, winner/loser outcomes or downstream consequences. There is no faction ownership choice in this slice.

## Run locally

Requires Node.js 20+.

```bash
npm install
npm run check
python3 -m http.server 8000 --directory web
```

Open [http://localhost:8000](http://localhost:8000). Opening `web/index.html` directly with `file://` does not reliably work because the player fetches compiled `story.json`.

`npm run check` compiles `ink/wards_point_entry.ink` into `web/story.json`, copies the InkJS browser runtime into `web/ink.js`, then runs automated narrative route tests. `web/story.json` and `web/ink.js` are generated artifacts, deliberately not checked in.

## Source provenance

- `source/`: selected, preserved original design documents from the Wards Point Library vault (not the entire Obsidian archive).
- `ink/`: playable adaptation, with both original dialogue and newly written navigation connective tissue clearly distinguished.
- `web/`: static browser reader, no accounts or backend.
- `tests/`: first-slice compiler and route assertions.
- `docs/SOURCE_AUDIT.md`, `docs/TRACEABILITY.md`, `docs/ENTRY_SLICE.md`: documented fidelity and conversion choices.

The starting prompt chooses **inherited faction standing** for a standalone demo. In the full design, that standing selects the opening briefing, **not** the final library owner. Ownership is irrevocably committed only on the **first successful report and key handover**; the losing faction has a subsequent independent response. Those mechanics are documented but not yet implemented in the browser.

## Preview and publishing

On each pull request, GitHub Actions compiles and tests the story and produces a downloadable `wards-point-entry-preview` artifact containing the self-contained browser files.

A second workflow is prepared to publish the compiled `web/` site from `main` to GitHub Pages **after the PR is reviewed and merged**. In the repository Settings → Pages, set the publishing source to **GitHub Actions** before deployment. No live public site is claimed until the Pages workflow succeeds.

## Attribution

Original quest writing and design © **Joseph Kristiansen**. Independent noncommercial portfolio exercise; not commissioned by, affiliated with or endorsed by Techland.

All rights reserved unless a reuse license is explicitly added.
