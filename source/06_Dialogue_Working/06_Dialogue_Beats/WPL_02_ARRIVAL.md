[[#^narrative-intent|Narrative Intent]]
[[#^entry-conditions|Entry Conditions]]
[[#^player-experience|Player Experience]]
[[#^state-interaction|State Interaction]]
	[[#^state-reads|State Reads]]
	[[#^state-writes|State Writes]]
[[#^failure-abort-conditions|Failure / Abort Conditions]]
[[#^events|Events]]
[[#^evidence|Evidence]]
[[#^exit-transition|Exit / Transition]]
[[#^gameplay-requirements|Gameplay Requirements]]
[[#^cinematic-requirements|Cinematic Requirements]]
[[#^implementation-boundary|Implementation Boundary]]
## Title
**WPL-02-"Entering the Library"**

## ID
**WPL_02_ARRIVAL**
## Narrative Intent
^narrative-intent

Transition the player from the mission briefing into the physical Wards Point Library space.
The scene should:
- establish the scale, condition, and immediate threat of the library;
- give the player a clear visual read of the main floor and inaccessible upper atrium;
- place the [[#^WPL-E01-KEY|key]]  required to secure the front entrance;
- provide a [[WPL_E02_FLASHLIGHT|flashlight]] if the player does not already possess one;
- direct the player toward the first interior objective without introducing new faction argument or exposition.
## Entry Conditions
^entry-conditions

[[WPL_BRIEF_COMPLETE]] must have been set to true.
## Player Experience
^player-experience

### Arrival / First Read - ^Arrival

On [[#^LIBRARY-ENTERED|entering]] Wards Point Library, the player receives an immediate [[#^WPL-CIN-ENTRY|visual]] read of the building's scale and potential use.

The main public floor opens ahead through library stacks, reading areas and adjoining offices. The upper glass atrium is visible from the entrance level, but the main stairs leading to it are blocked and cannot be used.

An information kiosk sits just inside the main entrance. The [[#^WPL-E01-KEY|key]] required to secure the entrance hangs behind the kiosk.

The player should understand three things immediately:

- Wards Point is much larger and more useful than a simple infected nest.
- The visible atrium is inaccessible from the obvious route.
- The immediate practical task is to secure the entrance before moving deeper into the building.

### Time-of-Day Variation - ^ToDV

Arrival encounter density should follow established Dying Light infected behavior.

**Day**
- exterior approach comparatively safer;
- main entrance open / unguarded;
- main floor mostly clear;
- limited infected presence in dark offices or interior shelter spaces.

**Night**
- exterior approach significantly more dangerous;
- increased infected presence around the entrance and main floor;
- reduced concentration in deeper shelter areas as infected move outside to hunt.

Exact encounter counts and placement remain with Level Design / Gameplay.

### Progression
^progression

1. Approach Wards Point Library.
   - During the [[#^ToDV|day]], the player may be able to enter with little resistance.
   - At [[#^ToDV|night]], the player may need to fight through infected around the entrance.

2. Enter the main public floor.
   - This triggers a state change on [[#^state-writes|WPL_Entered]] variable.
   - Encounter density depends on [[#^ToDV|time]] of day.
   - The player may face only a small number of infected or a more substantial group immediately inside.

3. Stabilize the entrance area and orient to the library.
   - The player receives the first broad read of the main floor.
   - The upper glass atrium is visible, but the direct stair route is blocked.

4. Locate [[#^WPL-E01-KEY|the key]] behind the information kiosk.

5. Use [[#^WPL-E01-KEY|the key]] to secure the main entrance.
   - This sets [[WPL_MAIN_ENTRANCE_SECURED]].
   - Securing the door triggers [[WPL_EVENT02_DOOR]].

6. [[WPL_EVENT02_DOOR]] begins the radio contact from [[03_Factions_and_Characters#^character-b|Character B — Competing Radio Contact]].

7. If the player does not already possess a flashlight, make [[#^WPL-E02-FLASHLIGHT|WPL_E02_FLASHLIGHT]] available in an available interior office before the player descends to the basement.

8. Player proceeds toward the stairs leading down into the lower interior of the library.
## State Interaction
^state-interaction

### State Reads
^state-reads

[[WPL_BRIEF_COMPLETE]] = true
### State Writes
^state-writes

[[WPL_MAIN_ENTRANCE_SECURED]] = true - ^ENTRNCE-SECURED
[[WPL_Entered]] = true - ^LIBRARY-ENTERED
## Failure / Abort Conditions
^failure-abort-conditions

Failure to secure the main entrance does not immediately fail the mission, but prevents successful completion.

If the player clears Wards Point Library and leaves without locking the main entrance:

- [[WPL_MAIN_ENTRANCE_SECURED]] remains false;
- the mission cannot transition to its successful debrief / ownership resolution;
- infected may begin repopulating the unsecured library according to normal game systems;
- returning to [[03_Factions_and_Characters#^character-a|Character A — Initial Quest Giver]] triggers an alternate debrief response rather than mission completion.

[CHARACTER-A]

"You left the front entrance unsecured."

The player must return to Wards Point Library, recover [[WPL_E01_KEY]] if it is no longer in Eli's possession, secure the main entrance, and re-establish any invalidated floor clearance before the mission can complete. [[WPL_EVENT06_DEPARTURE]] routes incomplete departures to [[WPL_EVENT06_EARLY_EXIT]]; boss defeat and permanent progression remain recorded. The front-door reminder in [[WPL_05_BASEMENT]] also directs Eli to the outstanding security task.

The successful return/debrief is gated by [[WPL_SECURED]], not key possession alone.

## Events
^events

[[WPL_EVENT02_DOOR]] - Triggers a [[#^state-writes|state write]] on [[WPL_MAIN_ENTRANCE_SECURED]], and Triggers Radio call by [[03_Factions_and_Characters#^character-b|Character B — Competing Radio Contact]]. ^WPL-EVENT01-DOOR

## Evidence
^evidence

[[WPL_E01_KEY]] - A key that is used to lock the main door. Locking the door triggers [[WPL_MAIN_ENTRANCE_SECURED|a state change]]. ^WPL-E01-KEY

[[WPL_E02_FLASHLIGHT]] - A physical flashlight that can be added to inventory. ^WPL-E02-FLASHLIGHT

## Exit / Transition
^exit-transition

Arrival transitions into [[WPL_04_MAIN_FLOOR]] exploration. The player subsequently leaves the main floor by descending toward [[WPL_05_BASEMENT]].
## Gameplay Requirements
^gameplay-requirements

Wards Point Library cannot be entered until [[WPL_BRIEF_COMPLETE]] = true.

## Cinematic Requirements
^cinematic-requirements

### Cinematic — First Entry
^WPL-CIN-ENTRY

On the player’s first entry into Wards Point Library, briefly take camera control to establish the main interior space.

The camera opens across the main library floor. By day, daylight from the upper glass atrium makes it feel unexpectedly open and bright compared with the deeper interior. At night, use time-appropriate lighting while preserving the readable scale, upper atrium and blocked stair route. Do not imply daylight during night arrival.

The camera lifts toward the atrium above, allowing the player to clearly register it as a distinct upper space.

As the camera follows the apparent route upward, reveal that the main stairs leading to the atrium are blocked by debris / structural collapse.

The shot should make the spatial relationship clear:

- the atrium is directly above the main library floor;
    
- it is visible from the main level;
    
- the obvious stair route is impassable;
    
- the player cannot access the atrium from the main level.
    

Return control to the player facing into the main library space.
## Implementation Boundary
^implementation-boundary

Exact camera language, animation set, blocking, prop implementation, mission scripting and environment setup remain subject to Cinematic, Level Design and Engineering implementation.
