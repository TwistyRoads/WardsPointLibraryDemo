# Source → Ink Traceability: Wards Point V0.03

The authoritative material is the **original Wards Point Library Obsidian / Markdown vault**, with selected unedited source files under `source/`. This table describes the **text-only adaptation**, not a production engine implementation.

| Original | Ink knot(s) / state | Status / contract |
| --- | --- | --- |
| `WPL_INITIAL_CLAIMANT`, `WPL_01_HOOK` | `setup`, `brief_pk`, `brief_bastion` | Simulated relative relationship selects opening faction (PK ties/default); opening does not award ownership; full authored brief preserved |
| `WPL_02_ARRIVAL`, `WPL_EVENT02_DOOR` | `foyer`, `kiosk`, `lock_entrance` | Only *using* recovered key to lock front door sets security, then triggers rival introduction |
| `WPL_03_COMPETING_CLAIM` | `rival_pk`, `rival_bastion` | Initial faction's rival voices compressed counter-case, distinct from later consultation |
| `WPL_04_MAIN_FLOOR` | `main_floor`, `clear_main_floor`, inspection knots | Clearance is an action, not an evidence-collection checklist; original incidental barks included |
| `WPL_05_BASEMENT` | `basement`, `clear_basement`, `generator`, `records`, `elevator` | Own clearance; original environmental priorities and Eli barks; entrance reminder where appropriate |
| `WPL_06_ATRIUM`, `WPL_EVENT06_BOSS_DEFEATED`, `WPL_E06_ATRIUM_DOOR_LOCK` | `kitchen_boss`, `atrium_lock`, `enter_atrium` | Defeat, door release and actual crossing are independent steps |
| `WPL_ATRIUM_REACHED`, `WPL_ATRIUM_RADIO_CALLS` | `atrium`, `pk_i_q1..3`, `pk_c_q1..3`, `bas_i_q1..3`, `bas_c_q1..3` | Qualified entry requires locked entrance + rival intro. All 12 role-specific original question sequences are optional, one time each and do not commit ownership |
| `WPL_SECURED`, `WPL_EVENT06_DEPARTURE` | `departure`, `secured_exit` | Five security preconditions (two floor clears, boss, door, atrium) enable claimant eligibility only after a successful exit |
| `WPL_EVENT06_EARLY_EXIT` | `early_exit`, `recover_entry` | Incomplete exit/attempt blocks handover, leaving entrance unlocked invalidates both floor clears; boss stays defeated, return via front entrance |
| `WPL_EVENT07_REPORT_ATTEMPT` | `report_pk`, `report_bastion`, `validate_report`, `incomplete_report` | **Check ownership first**; if already resolved, route to owner/loser encounter even without security gate. If unresolved, validate `secured`, key, and faction eligibility. No mutation on incomplete report |
| `WPL_07_DEBRIEF` | `pk_ic_win`, `pk_cc_win`, `bastion_ic_win`, `bastion_cc_win`; 4 corresponding `_loss` knots | All **eight source-authored** winner and loser variants, selected from initial claimant and receiving/reporting faction |
| `WPL_EVENT07_WIN_RESOLUTION` | `commit_win`, `ownership`, `report_complete`, `key_transferred`, claimant eligibility flags | Once, **after** the winning dialogue: irrevocable ownership, successful report, key transfer, disable both eligibility flags; create pending losing response and owner-specific downstream path |
| `WPL_EVENT07_LOSS_RESOLUTION`, `WPL_LOSING_CONSEQUENCE` | `commit_loss`, `losing_response_pending`, `losing_consequence_resolved`, faction reputation-effect recorded flags | Separate later interaction: apply a **one-time** record of relationship cost, never rewrite ownership, key or security |
| `WPL_ENDURING_WORLD_STATE` | `enduring_path_available`, `enduring_owner`, `owner_outlook` | Record **availability** of owner-specific downstream benefit-and-cost direction; do not claim later world changes are simulated |

## Source fidelity controls

`tests/dialogue-integrity.test.cjs` compares all source-authored spoken passages in `WPL_01_HOOK`, `WPL_03_COMPETING_CLAIM`, `WPL_04_MAIN_FLOOR`, `WPL_05_BASEMENT`, `WPL_06_ATRIUM`, and `WPL_07_DEBRIEF` against the playable Ink text. It accounts for authored split deliveries (Bastion's whispered explanation; Eli's deliberate pause) rather than silently deleting them.

Spoken dialogue is kept intact. Role placeholders are rendered as **Peacekeeper/Bastion representative** or **radio contact**, not invented canonical NPC names. Translated stage directions, text navigation, encounter abstractions and condensed environmental connective prose are adaptation work.

## Boundaries

- The original does not specify numeric reputation modifiers, deployed later environment alterations, exact infected encounter counts, full combat, campaign-level relation values or casting. The browser version does not invent them.
- `WPL_07_DEBRIEF` expects the **first successful report/key handover**, not a menu choosing an owner. `outside_contacts` presents encounters with claimants, with the outcome committed in the report sequence.
- The player may conclude the story with the losing encounter **pending**. Reopening the conversation while still playing consumes that response exactly once; it cannot change ownership.
- The original vault contains additional working files and assets not all mirrored into this selected `source/` subset.

## Verification

`npm run check` must pass on the PR and merged main before publishing. After merge, the GitHub Pages workflow deploys the compiled static web reader. See `DEBRIEF_IMPLEMENTATION.md`.
