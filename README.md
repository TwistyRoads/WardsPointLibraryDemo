# Wards Point Library — Interactive Narrative Demo

A browser-playable adaptation of Joseph Kristiansen's **Wards Point Library** quest design, intended as a narrative design and game-writing portfolio sample.

## Status

**Pre-production / source audit.** This repository has been initialized; no playable implementation is claimed yet.

## Design commitments

- Preserve the distinction between the player's initial briefing faction and eventual library ownership.
- Treat the atrium radio conversations as optional information gathering, not binding faction commitments.
- Resolve ownership at the **first successful report and key handover**, subject to the quest's documented eligibility and completion conditions.
- Preserve a subsequent report to the losing faction as a distinct loss-resolution encounter.
- Distinguish original authored dialogue from new adaptation dialogue; do not silently invent source material.
- Keep the browser demo usable without a server-side account or database.

## Planned structure

- `source/` — authoritative design documents, once reviewed and imported
- `ink/` — playable narrative source
- `web/` — browser interface powered by inkjs
- `tests/` — narrative state and route checks
- `docs/` — conversion notes, traceability, and editorial decisions

## Workflow

Implementation should proceed through reviewable branches and pull requests. The initial task is to map source beats, conditions, consequences, and authored dialogue before committing to a playable route model.

## Attribution

Original quest design and writing: **Joseph Kristiansen**. This repository is public for portfolio review; no license to reuse or redistribute the original narrative material is granted unless one is explicitly added.
