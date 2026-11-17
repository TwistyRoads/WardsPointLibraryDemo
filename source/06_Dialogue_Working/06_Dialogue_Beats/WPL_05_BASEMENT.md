[[#^narrative-intent|Narrative Intent]]
[[#^entry-conditions|Entry Conditions]]
[[#^dialogue-barks|Dialogue / Barks]]
[[#^player-experience|Player Experience]]
[[#^events|Events]]
[[#^evidence|Evidence]]
[[#^exit-transition|Exit / Transition]]
[[#^gameplay-requirements|Gameplay Requirements]]
[[#^visual-requirements|Graphic / Visual Requirements]]
[[#^implementation-boundary|Implementation Boundary]]
## Title
**WPL-05 - "Descent into Darkness"**
## ID
**WPL_05_BASEMENT**
## Narrative Intent
^narrative-intent

Use exploration of the basement / archive level to reveal the deeper practical value of Wards Point Library.

Unlike the main floor, the basement should contain specific infrastructure and archived material whose later treatment helps the player understand the consequences of assigning the building to either faction.

The scene should:

- establish that Wards Point contains more than public-facing library space;
- reveal surviving infrastructure capable of supporting power, heat, repair and long-term occupation;
- expose archived civic and technical information with potential value beyond the building itself;
- allow the player to recognize what may later be preserved, controlled, repurposed, damaged or lost depending on faction ownership;
- continue normal exploration and infected-clearing gameplay while guiding the player toward the route up to the atrium.

## Entry Conditions
^entry-conditions

Transitions from [[WPL_04_MAIN_FLOOR]] after the player descends toward Research & Archives.

IF WPL_MAIN_ENTRANCE_SECURED = false
    initial claimant radios Eli:
    "Eli. The front door. Lock the damn door."

## Dialogue / Barks
^dialogue-barks

"Ah. There you are." - [on seeing the generator] - ^WPL-05-B01

"Well... somebody kept everything." - ^WPL-05-B02

"Something's been using this..." [pause] "a lot" - ^WPL-05-B03

## Player Experience
^player-experience

The player descends from the main library floor into a darker, more confined basement environment containing the library's archive, mechanical systems and service areas.

The player may initially clear or avoid infected during exploration, but all infected in the basement must be eliminated before the building can be considered secured.

Exploration should remain player-led, with normal traversal and infected-clearing gameplay continuing throughout the level.

The basement should gradually shift the player's understanding of Wards Point from a useful public building to a location containing deeper civic and technical value.

As the player moves through the space, they should encounter:

- archive and records areas containing municipal and technical information;
- the library's generator and heating infrastructure;
- maintenance and service spaces that suggest repair and fabrication potential;
- evidence that the basement supports long-term occupation and operation of the building.

Selected discoveries trigger short contextual barks from Eli, but the environment should carry most of the narrative information.

Navigation should guide the player progressively deeper into the basement rather than immediately revealing the route upward. Use layout and infected to ensure Eli encounters and has the opportunity to see all [[#^evidence|EVIDENCE]].

The open elevator / service shaft should be discovered late in the exploration sequence. Visual evidence should suggest that something has been travelling through the shaft repeatedly.

By the time the player reaches the elevator, they should understand that Wards Point contains valuable infrastructure and knowledge that could materially affect the future of the city.

The player then climbs through the elevator / service shaft and exits into the cafeteria kitchen adjoining the upper atrium.

## Events
^events

[[WPL_EVENT05_GENERATOR]] - Triggers [[#^WPL-05-B01|WPL-05-B01]].
[[WPL_EVENT05_MUNICIPAL_ARCHIVE]] - Triggers [[#^WPL-05-B02|WPL-05-B02]].
[[WPL_EVENT05_ELEVATOR]] - Triggers [[#^WPL-05-B03|WPL-05-B03]].

## Evidence
^evidence

[[WPL_E05_GENERATOR]] - a robust backup generator.
[[WPL_E05_BOILER]] - a basement boiler / heating plant serving the building.
[[WPL_E05_MUNICIPAL_ARCHIVE]] - an organized archive of municipal plans and technical records.
[[WPL_E05_TECHNICAL_REFERENCE]] - a collection of practical technical manuals and reference material.

## Exit / Transition
^exit-transition

The player reaches the open elevator / service shaft at the far end of the basement and climbs upward through the shaft.

The route exits into the cafeteria kitchen adjoining the upper atrium, transitioning the mission into [[WPL_06_ATRIUM]].

IF Infected count in BASEMENT = 0 THEN [[WPL_BASEMENT_CLEARED]] = "true"

## Gameplay Requirements
^gameplay-requirements
### WPL_EVENT05_GENERATOR
- Fire when Eli enters the generator room and [[WPL_E05_GENERATOR]] becomes clearly visible.
- Do not interrupt active combat if the bark would be obscured or inappropriate.
- Event should fire once only.

### WPL_EVENT05_MUNICIPAL_ARCHIVE
- Fire when Eli reaches a position where the scale and organization of [[WPL_E05_MUNICIPAL_ARCHIVE]] become clearly apparent.
- Do not interrupt active combat if the bark would be obscured or inappropriate.
- Event should fire once only.

### WPL_EVENT05_ELEVATOR
- Fire [[WPL_EVENT05_ELEVATOR]] when Eli reaches the elevator / service shaft and can clearly see evidence that something has repeatedly travelled through it.
- Do not interrupt active combat if the bark would be obscured or inappropriate.
- Event should fire once only.

## Graphic / Visual Requirements
^visual-requirements

### Research & Archives Area
^archives-area

The basement should read immediately as a hybrid archive / records storage space rather than generic storage.

Visual elements may include:

- compact shelving;
- filing cabinets;
- flat map drawers;
- rolled-plan storage;
- labeled archive boxes;
- reference desks / work tables;
- institutional shelving labels;
- municipal department labels.

The space should feel organized enough that the player can understand this was a working civic archive before the collapse.

### Municipal Archive Labels
^municipal-labels

Selected storage areas should carry readable labels identifying practical civic information.

Examples:

- Building Plans
- Structural Drawings
- Electrical Distribution
- Water & Sewage
- Heating / Mechanical
- Streets & Utility Routes
- Municipal Facilities
- Maintenance Records

These labels should be environmental graphics rather than mission markers.

### Technical Reference Shelving
^technical-reference

A separate or adjoining technical-reference area should visibly contain practical manuals and trade material.

Suggested categories:

- Electrical
- Plumbing
- Heating Systems
- Construction
- Machining / Fabrication
- Maintenance
- Building Services

The visual treatment should distinguish practical technical reference material from the municipal archive itself.

### Generator Room
^generator-room

A dedicated mechanical space containing [[WPL_E05_GENERATOR]].

The generator should be large and robust enough to plausibly provide emergency power to the building.

Supporting environmental elements may include:

- breaker panels;
- conduit;
- fuel lines / tanks where appropriate;
- service labels;
- maintenance logs or placards;
- warning signage.

### Boiler / Heating Plant
^boiler-room

A dedicated mechanical room containing [[WPL_E05_BOILER]].

The space should visually communicate that the boiler serves the building rather than being a small domestic unit.

Supporting elements may include:

- pipe runs;
- valves;
- gauges;
- pumps;
- maintenance signage;
- fuel / service access.

### Maintenance Workshop
^maintenance-workshop

A small building-maintenance workshop associated with the mechanical areas.

Visual elements may include:

- workbench;
- vice;
- hand tools;
- shelving;
- spare pipe and fittings;
- electrical components;
- scrap metal;
- maintenance carts;
- repair materials.

The workshop should suggest that the building could support repair and fabrication activity without requiring it to be treated as formal Evidence.

### Storage / Utility Areas
^utility-storage

General basement storage should reinforce the building's former civic function.

Possible contents:

- replacement lighting;
- cleaning supplies;
- folding tables and chairs;
- maintenance stock;
- plumbing fixtures;
- boxed office supplies;
- spare shelving;
- emergency equipment.

These areas should feel practical rather than loot-authored.

### Elevator / Service Route to Atrium
^service-route

The basement should contain an open elevator / service lift that provides the only viable route upward to the atrium level.

The elevator car or shaft access should have an open ceiling hatch / service door that clearly permits vertical traversal.

This route should be positioned so that it is discovered late in the basement exploration sequence rather than immediately on entry.

Navigation should naturally guide the player through the archive, mechanical and service areas before revealing the elevator route.

The shaft climb exits into the cafeteria kitchen adjoining the upper atrium.

The route should communicate:

- the main stair access to the atrium is unavailable;
- the basement provides an alternate vertical route;
- the elevator / service shaft is the intended final navigation discovery on the lower level;
- reaching the cafeteria kitchen marks the transition from the basement into the atrium sequence.
## Implementation Boundary
^implementation-boundary

Exact camera language, animation set, blocking, prop implementation, mission scripting and environment setup remain subject to Cinematic, Level Design and Engineering implementation.
