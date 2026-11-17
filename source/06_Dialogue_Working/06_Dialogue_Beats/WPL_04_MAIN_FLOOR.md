[[#^narrative-intent|Narrative Intent]]
[[#^entry-conditions|Entry Conditions]]
[[#^dialogue-barks|Dialogue / Barks]]
[[#^player-experience|Player Experience]]
[[#^events|Events]]
[[#^exit-transition|Exit / Transition]]
[[#^gameplay-requirements|Gameplay Requirements]]
[[#^visual-requirements|Graphic / Visual Requirements]]
[[#^implementation-boundary|Implementation Boundary]]
## Title
**WPL-04 - "Quiet Please"**
## ID
**WPL_04_MAIN_FLOOR**
## Narrative Intent
^narrative-intent

Use exploration of the main library floor to establish Wards Point as a civic space with multiple plausible future uses.

The scene should:

- allow the player to discover the building's public, educational and communal potential through normal traversal and combat;
- use signage, room layout and environmental detail to suggest practical value without assigning that value to either faction;
- use short situational barks from Eli to draw attention to selected features without turning exploration into exposition;
- reinforce that the library is more than an infected nest and is worth contesting;
- direct the player naturally toward the lower archive level.

## Entry Conditions
^entry-conditions

Transitions from [[WPL_02_ARRIVAL]].

## Dialogue / Barks
^dialogue-barks

"There's Waldo" - [dry wit] - ^WPL-04-B01

"Yeah, not getting up that way" - ^WPL-04-B02

"That could be handy." - ^WPL-04-B03

"Archives and infected, lower level please!" - ^WPL-04-B04

"This is bigger than I thought!" - ^WPL-04-B05

## Player Experience
^player-experience

The player may initially clear or avoid infected during exploration, but all infected on the main floor must be eliminated before the building can be considered secured.

Exploration should remain player-led rather than following a fixed narrative sequence.

As the player traverses the space, selected environmental features trigger short contextual barks from Eli. These observations should feel incidental to movement and combat rather than required narrative interactions.

Use layout and infected to ensure Eli encounters and has the opportunity to see the authored environmental features in [[#^player-experience|Player Experience]] and [[#^visual-requirements|Graphic / Visual Requirements]]. These features do not require separate formal Evidence objects.

The player should gradually register:

- the scale of the public library;
- the surviving educational and reference material;
- spaces suitable for community use;
- the blocked route to the upper atrium;
- signage directing them toward Research & Archives on the lower level.

By the time the player descends to the basement, they should understand that Wards Point has value beyond its immediate defensibility, without being told which faction would make better use of it.

## Events
^events

[[WPL_EVENT04_WALDO]] - Triggers [[#^WPL-04-B01|WPL-04-B01]].
[[WPL_EVENT04_BLOCKED_STAIRS]] - Triggers [[#^WPL-04-B02|WPL-04-B02]].
[[WPL_EVENT04_MEDICINE_SIGN]] - Triggers [[#^WPL-04-B03|WPL-04-B03]].
[[WPL_EVENT04_ARCHIVES]] - Triggers [[#^WPL-04-B04|WPL-04-B04]]
[[WPL_EVENT04_COMMUNITY]] - Triggers [[#^WPL-04-B05|WPL-04-B05]]

## Exit / Transition
^exit-transition

The player follows the Research & Archives signage and proceeds downstairs into [[WPL_05_BASEMENT]].

IF Infected count on MAIN_FLOOR = 0 THEN [[WPL_MAIN_FLOOR_CLEARED]] = "true"

## Gameplay Requirements
^gameplay-requirements

### Infected
One infected located in the children's section should be wearing a red and white striped sweater as a call out to the children's books "Where's Waldo".

### WPL_EVENT04_WALDO
- Fire when Eli kills the red-and-white striped infected within the Children's Corner.
- Event should fire once only.

### WPL_EVENT04_BLOCKED_STAIRS
- Fire when Eli approaches / enters visual range of the blocked atrium stairs.
- Do not interrupt active combat if the bark would be obscured or inappropriate.
- Event should fire once only.

### WPL_EVENT04_MEDICINE_SIGN
- Fire when Eli approaches / enters visual range of the medical reference section.
- Do not interrupt active combat if the bark would be obscured or inappropriate.
- Event should fire once only.

### WPL_EVENT04_ARCHIVES
- Fire when Eli approaches / enters visual range of the archives/basement sign.
- Do not interrupt active combat if the bark would be obscured or inappropriate.
- Event should fire once only.

### WPL_EVENT04_COMMUNITY
- Fire when Eli approaches / enters visual range of the Community/Meeting rooms section.
- Do not interrupt active combat if the bark would be obscured or inappropriate.
- Event should fire once only.

## Graphic / Visual Requirements
^visual-requirements

### Library Category Signage - ^signage

Hanging aisle signs and/or wall-mounted section markers should identify selected areas of the main library floor. The signage should look like normal pre-collapse public-library wayfinding rather than mission UI.

Priority categories to make visually legible:

- Science & Technology
- Agriculture & Horticulture
- Medicine & Health
- History
- Trades & Repair
- Education
- Local / Civic Reference

The purpose is not to make every library section readable. These categories are deliberately emphasized because they establish that the surviving collection contains practical knowledge with potential value beyond leisure reading.
## Implementation Boundary
^implementation-boundary

Exact camera language, animation set, blocking, prop implementation, mission scripting and environment setup remain subject to Cinematic, Level Design and Engineering implementation.
