# Exploration and Atrium Vertical Slice — V0.02

**Status:** Implemented in `ink/wards_point_entry.ink`; tested by `tests/entry.test.cjs`. This is a **textual adaptation**, not the completed Wards Point Library quest.

## What the player can do

- Hear the original Peacekeeper or Bastion opening brief based on simulated prior faction standing.
- Enter the main floor **before or after** locking the front entrance. Taking the key and using it to secure the door are separate actions. The lock triggers the rival introduction.
- Examine the children's corner, medicine section, archives signage, and meeting rooms; or simply clear the floor and progress. Short Eli barks are preserved from `WPL_04_MAIN_FLOOR`.
- Explore archive and mechanical spaces, encounter the generator / boiler and municipal records, discover the elevator shaft, and clear the basement. Eli's source barks are retained from `WPL_05_BASEMENT`.
- Face the mandatory cafeteria boss as a **single text-resolution action**. Defeating it unlocks the *ability to inspect the atrium door*, not the door itself. Clear the deadbolt as a second action, then physically enter the atrium as a third.
- Ask Peacekeepers, Bastion, both, or neither about intended use of the library. Each faction's three authored conversation sequences change depending on whether it was the initial claimant or the later radio claimant. All twelve source question sequences are present.
- Leave the far atrium exit. A completed building yields a secured-exit status but **does not transfer ownership** in this release.
- Leave without securing the front entrance, return through the original public doorway, re-clear both floors and satisfy the entrance and atrium gates. The boss remains defeated and the atrium exit is still inaccessible for re-entry.

## Source authority

- `WPL_01_HOOK`, `WPL_03_COMPETING_CLAIM`: verbatim spoken dialogue from V0.01.
- `WPL_04_MAIN_FLOOR`: situational barks and exploratory priorities.
- `WPL_05_BASEMENT`: basement barks, infrastructure and archive priorities, and the unsecured-door reminder.
- `WPL_06_ATRIUM`: four claimant-role variants × three questions each = **12 question scripts**. Stage directions without spoken lines are excluded from the transcript.
- `WPL_ATRIUM_REACHED`, `WPL_ATRIUM_RADIO_CALLS`, `WPL_SECURED`, `WPL_EVENT06_DEPARTURE`, `WPL_EVENT06_EARLY_EXIT`, `WPL_EVENT06_BOSS_DEFEATED` and `WPL_E06_ATRIUM_DOOR_LOCK` control the documented prerequisites and transitions.

The original prose describing features is not a complete text-adventure script. New navigation, environment connective sentences, choices, and abstracted encounter resolution are adaptation writing. The unmodified original source documents remain in `source/` for review.

## Simplifications and editorial risks

**No stealth/combat simulation:** A choice resolves each infected-clearance objective and the mandatory kitchen boss. This is deliberately explicit; it should not be mistaken for detailed combat design.

**No collectibles gate:** Looking at evidence or hearing incidental barks never artificially gates completion. Security is derived from the source's five required conditions.

**Standalone relationship setup:** Initial claimant is chosen at startup; the wider campaign relationship model isn't present.

**Consultation implementation:** The three authored questions for each faction are presented as independent selectable conversations, once each per playthrough. This is an interactive interface adaptation of the source's optional radio consultations, not a rewrite of the dialogue.

**No ownership yet:** The first successful report/key handover, subsequent losing-faction response and persistent later-world consequences are reserved for V0.03. No arbitrary `Choose Peacekeepers/Bastion` ownership menu has been added.

## Tests

Automated tests assert:
- Original briefing/rival radio variants and counts remain present.
- Door security is caused by action, not key possession.
- Boss defeat, door interaction and physical atrium crossing are independent transitions.
- Atrium calls are available only with qualified entry and are nonbinding.
- Correct dialogue variant for an initial or counter-claimant.
- Missing front-door security prevents successful qualification and forces floor-clearance rework after exit, but preserves boss defeat.
- Optional evidence is not a hidden completion checklist.

A GitHub Actions workflow compiles the Ink, runs the tests, and uploads the static browser preview as an artifact on PR updates. GitHub Pages publishing is still a separate release step.

## Next milestone — V0.03

Implement report-attempt validation and first successful key handover, the four initial-claimant/winner pairings, one-time losing reactions and reputation effect, then regression tests for repeated reporting and recovery.
