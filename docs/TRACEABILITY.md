# Wards Point source → Ink traceability (V0.02)

The preserved `source/` documents remain the authorial specification. Ink implementation records source conditions or events in adapted player interactions; combat and navigation are not re-creations of the original game engine.

| Source | Ink knot(s) | V0.02 status | Preserved behavior |
| --- | --- | --- | --- |
| WPL_01_HOOK | `brief_pk`, `brief_bastion` | Implemented | Briefing depends on prior faction standing, not ownership |
| WPL_02_ARRIVAL | `arrival`, `foyer`, `kiosk`, `lock_entrance` | Implemented | Possession of key does not lock door; lock event causes rival radio |
| WPL_03_COMPETING_CLAIM | `rival_pk`, `rival_bastion` | Implemented | Rival introduction only; no handover |
| WPL_04_MAIN_FLOOR | `main_floor`, `clear_main_floor` and incidental barks | Text adaptation | Infected clearance independent of evidence inspection |
| WPL_05_BASEMENT | `basement`, `clear_basement`, `generator`, `records`, `elevator` | Text adaptation | Independent clearance; reminder if main entrance not locked |
| WPL_06_ATRIUM | `kitchen_boss`, `atrium_lock`, `enter_atrium`, 12 question knots | Implemented as text actions | Boss, deadbolt, physical entry are distinct; radio calls optional/nonbinding |
| WPL_ATRIUM_REACHED / WPL_ATRIUM_RADIO_CALLS | `enter_atrium`, `atrium` | Implemented | Qualified physical entry only with entrance secured + rival introduction |
| WPL_SECURED / WPL_EVENT06_DEPARTURE | `departure`, `secured_exit` | Implemented | Five preconditions; leaving alone does not award faction ownership |
| WPL_EVENT06_EARLY_EXIT | `early_exit`, `recover_entry` | Implemented as text recovery | Unlocked front door invalidates both floor clears; boss remains defeated; return via original entrance |
| WPL_07_DEBRIEF | — | **Planned V0.03** | Successful first report plus key handover will irrevocably award the owner |
| WPL_EVENT07_REPORT_ATTEMPT | — | **Planned V0.03** | Prior ownership must be checked before new security gating |
| WPL_EVENT07_WIN_RESOLUTION | — | **Planned V0.03** | One-time key transfer and lasting world-state owner |
| WPL_EVENT07_LOSS_RESOLUTION | — | **Planned V0.03** | Subsequent losing-faction response with one-time reputation cost |

**Editorial boundary:** Spoken dialogue is drawn from the original source. Traversal, interaction menus, battle resolutions and some connective environmental prose are identifiable adaptations, not newly discovered original dialogue. Some additional vault files are not yet mirrored to `source/`; the complete vault ZIP remains the comprehensive reference.
