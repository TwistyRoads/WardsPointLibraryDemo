# Wards Point Library — Source Audit (V0.01)

**Basis:** Original `Wards_Point_Library_01.zip` vault, preserved selected documents in `source/`. This audit reflects authored design, not a completed browser implementation.

## Authored route

1. Prior faction standing selects `WPL_INITIAL_CLAIMANT` (PK wins ties/fallback). This selects the **briefing**, not the eventual owner.
2. `WPL_01_HOOK` sets `WPL_BRIEF_COMPLETE`. Peacekeeper and Bastion variants have distinct ideological voices.
3. `WPL_02_ARRIVAL`: library entrance, kiosk key, blocked atrium stairs. **Locking** the entrance with the key sets `WPL_MAIN_ENTRANCE_SECURED`; key possession does not.
4. The entrance lock triggers `WPL_EVENT02_DOOR`, initiating the rival's `WPL_03_COMPETING_CLAIM` radio introduction.
5. `WPL_04_MAIN_FLOOR` and `WPL_05_BASEMENT` are cleared through encounters; environmental clues convey value. No completion requirement to collect every piece of evidence.
6. In `WPL_06_ATRIUM`, the mandatory kitchen boss enables access to the atrium door. Defeating it **does not** itself open the door. Atrium progression has additional prerequisites.
7. Atrium calls to either, both, or neither faction are optional and **not binding**.
8. `WPL_SECURED` depends on five conditions: main-floor clear, basement clear, boss defeated, entrance secured, qualified atrium progress.
9. Leaving with the front door unsecured invalidates non-boss floor clearance and requires return/recovery. Permanent progression and boss defeat remain recorded.
10. `WPL_07_DEBRIEF`: first successful report and physical key handover commit ownership, independent of which faction briefed Eli. The other faction's later losing response is a separate one-time consequence.

## Adaptation decisions to verify

- The demo is standalone: choose initial relative faction standing explicitly or use documented default, rather than implying an existing campaign history.
- Text-only interactions will stand in for combat, traversal, and environmental examination. These must be labelled **adaptation connective writing**, not represented as source-authored dialogue.
- The original narrative uses `CHARACTER_A` / `CHARACTER_B` role placeholders, so do not invent canonical named NPCs.
- Do not collapse the rival radio introduction and optional atrium consultation.
- Do not replace the first-successful-report mechanic with a generic faction choice menu.
- Preserve failed report, front-door recovery, winner and loser reaction paths, and eventual downstream world-state eligibility.
- Do not claim that the broader world-state transformations have been built.

## Implementation acceptance tests

A playable port will need assertions for: both opening briefing variants; key acquisition vs actual locking; rival introduction trigger exactly once; optional calls nonbinding; all five secured prerequisites; early-exit security reset/recovery; first valid handover locks ownership; all four initial-claimant/winner pairings; later losing response once only; a repeat report cannot transfer ownership.

See `TRACEABILITY.md` for authored file-to-knot mapping.
