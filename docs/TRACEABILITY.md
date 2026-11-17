# Authoritative source → planned Ink implementation

| Source document | Planned narrative construct | Required invariant |
| --- | --- | --- |
| WPL_01_HOOK | `brief_pk`, `brief_bastion` | Starting faction determined by relationship standing, not eventual owner |
| WPL_02_ARRIVAL | `arrival`, `kiosk_key`, `entrance_lock` | Possession is distinct from locking |
| WPL_03_COMPETING_CLAIM | `rival_radio` | Triggered by door security event; not a faction commitment |
| WPL_04_MAIN_FLOOR | `main_floor` | Clear infected; evidence exploration not a collectible gate |
| WPL_05_BASEMENT | `basement` | Clear infected; reminder if entrance remains unsecured |
| WPL_06_ATRIUM | `kitchen`, `atrium_door`, `atrium`, `atrium_calls` | Boss does not automatically open door; optional calls do not determine owner |
| WPL_07_DEBRIEF | `report_pk`, `report_bastion`, `losing_response` | First valid report/handover commits ownership once |
| WPL_EVENT07_REPORT_ATTEMPT | `validate_report` | Check ownership before secured status |
| WPL_EVENT07_WIN_RESOLUTION | `commit_ownership` | One-time ownership, key transfer, persistent result |
| WPL_EVENT07_LOSS_RESOLUTION | `resolve_loser` | One-time reputation cost, no ownership transfer |

Selected source files are imported without editorial rewrite to `source/`. Further vault evidence/events remain in the original ZIP, not yet mirrored here.

**Editorial boundary:** newly needed exploration/action prose should be identified as adaptation text. Quoted dialogue should be faithful to the source unless explicitly revised and approved.
