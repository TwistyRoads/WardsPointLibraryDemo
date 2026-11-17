[[#^narrative-intent|Narrative Intent]]
[[#^entry-conditions|Entry Conditions]]
[[#^narrative-sequence|Narrative Sequence]]
	[[#^Beat-01|Initial Claimant Wins]]
		[[#^PeaceKeeper-IC-win|PeaceKeeper Win]]
		[[#^Bastion-IC-win|Bastion Win]]
	[[#^Beat-02|Counter-Claimant Wins]]
		[[#^PeaceKeeper-CC-win|PeaceKeeper Win]]
		[[#^Bastion-CC-win|Bastion Win]]
	[[#^Beat-03|Initial Claimant Loses]]
		[[#^PeaceKeeper-IC-loss|PeaceKeeper Loses]]
		[[#^Bastion-IC-loss|Bastion Loses]]
	[[#^Beat-04|Counter-Claimant Loses]]
		[[#^PeaceKeeper-CC-loss|PeaceKeeper Loses]]
		[[#^Bastion-CC-loss|Bastion Loses]]
[[#^player-experience|Player Experience]]
[[#^state-interaction|State Interaction]]
	[[#^state-reads|State Reads]]
	[[#^state-writes|State Writes]]
[[#^failure-abort-conditions|Failure / Abort Conditions]]
[[#^events|Events]]
[[#^evidence|Evidence]]
[[#^exit-transition|Exit / Transition]]
[[#^gameplay-requirements|Gameplay Requirements]]
[[#^implementation-boundary|Implementation Boundary]]
## Title
**WPL_07 - "Pick one!"**
## ID
**WPL_07_DEBRIEF**
## Narrative Intent
^narrative-intent

Resolve the Wards Point Library conflict by converting Eli's completed mission into an irreversible faction outcome.

The debrief should make clear that ownership is not selected through a menu or abstract mission choice. Eli commits the result by deciding which claimant receives the first successful report and [[WPL_E01_KEY]].

The winning response should be brief and faction-specific:

- the Peacekeeper response should acknowledge Eli's concerns while expressing confidence that Wards Point will be put to responsible use;
- the Bastion response should remain casual, practical and immediately focused on occupying and using the building.

If Eli later reports to the losing faction, the response should be restrained rather than dramatic. The purpose is to acknowledge the decision, close the immediate conversation and forecast a relationship cost without reopening ownership.

The emotional weight should differ according to prior relationship:

- an initial claimant has stronger grounds to view Eli's decision as a breach of trust because they sent him into Wards Point;
- a counter-claimant may be disappointed or colder, but did not commission the operation and should not react as though Eli owed them the building.

The debrief should preserve the distinction between faction ideology and personal relationship. It should not restate the full arguments already presented during the mission.

By the end of the successful winner sequence, the player should understand that the decision is final, that Wards Point now has an owner, and that the chosen faction's interpretation of the building will shape its later world state.

The losing-faction response remains a separate unresolved narrative obligation until Eli encounters that faction again.
## Entry Conditions
^entry-conditions

Eli may return to either claimant and attempt to report the status of Wards Point Library.

On report attempt, trigger [[WPL_EVENT07_REPORT_ATTEMPT]].

[[WPL_EVENT07_REPORT_ATTEMPT]] owns validation and narrative routing.

Routing evaluates [[WPL_OWNERSHIP]] before treating [[WPL_SECURED]] as a prerequisite:

- if ownership is already resolved, the Event routes according to whether Eli is interacting with the owner or the losing faction and whether the losing response remains unresolved;
- if ownership is unresolved, [[WPL_SECURED]] determines whether Eli receives an incomplete-job response or enters the successful report / key-handover sequence.

Post-ownership losing-faction routing does not require [[WPL_SECURED]] to remain true or available.

Incomplete report attempts make no ownership, report-complete, claimant-eligibility, losing-consequence, reputation, or enduring-world-state changes and return Eli to outstanding Wards Point objectives.

Where the outstanding condition is the unsecured front entrance, use the incomplete-return behaviour already defined in [[WPL_02_ARRIVAL]].

The first successful report commits ownership. The losing-faction sequence remains available until it is fired and consumed.

## Narrative Sequence
^narrative-sequence

### Beat 01 - Initial Claimant Wins
^Beat-01

#### PeaceKeeper Win - [[WPL_INITIAL_CLAIMANT]] = [PK]
^PeaceKeeper-IC-win

[Eli]
"Wards Point is secure."

[CHARACTER_A]
"And the key?"

[Eli]
[hands over key]
"Here."

[CHARACTER_A]
"Thank you, Eli." [pause]
"I know you still have your concerns."

[Eli]
"Yeah."

[CHARACTER_A]
"You should. But this is the right call." [pause]
"We'll make sure it matters."
#### Bastion Win - [[WPL_INITIAL_CLAIMANT]] = [BASTION]
^Bastion-IC-win

[Eli]
"Wards Point is secure."

[CHARACTER_A]
"Yeah?"

[Eli]
[hands over key]
"Yeah."

[CHARACTER_A]
[laughs]
"Beautiful." [pause]
"Alright. I'll see who's around and get people moving."

[Eli]
"That fast?"

[CHARACTER_A]
"Brother, you gave us a building. I'm not gonna sit here admiring the key."
### Beat 02 - Counter-Claimant Wins
^Beat-02

#### PeaceKeeper Win - [[WPL_INITIAL_CLAIMANT]] = [BASTION]
^PeaceKeeper-CC-win

[Eli]
"Wards Point is secure."

[CHARACTER_B]
"And you're telling us."

[Eli]
[hands over key]
"I'm giving it to you."

[CHARACTER_B]
[takes key]
[pause]
"You didn't have to."

[Eli]
"No."

[CHARACTER_B]
"Then thank you." [pause]
"You gave us the chance, Eli."
"We'll prove you were right to."

#### Bastion Win - [[WPL_INITIAL_CLAIMANT]] = [PK]
^Bastion-CC-win

[Eli]
"Wards Point is clear."

[CHARACTER_B]
"Good."

[Eli]
[hands over key]

[CHARACTER_B]
[looks at key]
[pause]
"Shit."

[Eli]
"What?"

[CHARACTER_B]
"You actually came to us first."

[Eli]
"Looks that way."

[CHARACTER_B]
[laughs]
"Alright, brother."
"I'll find some people. We can start cleaning the place out before somebody changes their mind."

### Beat 03 - Initial Claimant Loses
^Beat-03

#### PeaceKeeper Loss - [[WPL_INITIAL_CLAIMANT]] = [PK]
^PeaceKeeper-IC-loss

[Eli]
"Wards Point is secure."

[CHARACTER_A]
"I know." [pause]
"They have the key?"

[Eli]
"Yeah."

[CHARACTER_A]
"Then there's nothing else to discuss." [pause] [walks away]

#### Bastion Loss - [[WPL_INITIAL_CLAIMANT]] = [BASTION]
^Bastion-IC-loss

[Eli]
"Wards Point is secure."

[CHARACTER_A]
"Yeah. Heard."

[Eli]
"They've got it."

[CHARACTER_A]
[pause]
"Right." [pause]
"Guess we know where we stand."

[Eli]
"That's not—"

[CHARACTER_A]
"Don't." [pause]
"Not today."

### Beat 04 - Counter-Claimant Loses
^Beat-04

#### PeaceKeeper Loss - [[WPL_INITIAL_CLAIMANT]] = [BASTION]
^PeaceKeeper-CC-loss

[Eli]
"Wards Point is secure."

[CHARACTER_B]
"And they have it."

[Eli]
"Yeah."

[CHARACTER_B]
[pause]
"I thought you might come to us."

[Eli]
"I didn't."

[CHARACTER_B]
"No." [pause]
"We'll take that into account."

#### Bastion Loss - [[WPL_INITIAL_CLAIMANT]] = [PK]
^Bastion-CC-loss

[Eli]
"Wards Point is clear."

[CHARACTER_B]
"And you gave it to them."

[Eli]
"Yeah."

[CHARACTER_B]
[pause]
"Alright, Eli." [pause]
"Good to know."

## Player Experience
^player-experience

After securing Wards Point, the player is free to return to either claimant.

The first successful report is the commitment point.

The interaction should initially feel like a normal mission debrief rather than a formal faction-selection interface. The consequence becomes explicit when Eli hands over [[WPL_E01_KEY]] and the receiving faction accepts control of the library.

The winning exchange should be short. The player has already explored the building, heard both claims and made the meaningful decision through play. The debrief confirms that decision rather than asking the player to justify it again.

Immediately after the successful winner sequence, [[WPL_EVENT07_WIN_RESOLUTION]] commits ownership and resolves the mission state. The player should understand that the choice cannot be reversed by subsequently approaching the other faction.

The losing faction remains available for a later response.

When that interaction occurs, the player should experience a noticeable change in tone rather than a second confrontation or another decision point. The losing character understands what happened and reacts according to whether they were the initial claimant or counter-claimant.

For Bastion in particular, changes in familiar language may communicate the relationship shift without explicit exposition.

The losing exchange should be brief enough that it feels like consequence rather than punishment. It closes the faction's immediate involvement in the Wards Point decision while allowing the resulting relationship effect to persist beyond the mission.

The overall experience should leave the player with a clear sense that:

- the building was secured through gameplay;
- ownership was determined by whom Eli chose to trust with the result;
- the decision produced both a persistent world consequence and a personal faction consequence;
- no further Wards Point interaction can transfer ownership once the first successful handover is complete.
## State Interaction
^state-interaction

State validation and mutation for the debrief are owned by the linked Events.

### State Reads
^state-reads

[[WPL_EVENT07_REPORT_ATTEMPT]] owns the state reads required to validate the report attempt and route the appropriate narrative sequence.

### State Writes
^state-writes

[[WPL_EVENT07_WIN_RESOLUTION]] owns the state writes required to commit ownership, complete the first successful report / key handover, expose downstream consequence state and reconcile mission-only state.

The losing-faction response and any associated relationship / reputation consequence are resolved through [[WPL_EVENT07_LOSS_RESOLUTION]].

Do not duplicate Event-owned state transitions in this scene definition.

## Failure / Abort Conditions
^failure-abort-conditions

None specific to this narrative beat.

Incomplete report attempts and invalid debrief states are handled by [[WPL_EVENT07_REPORT_ATTEMPT]] and existing mission recovery logic.

## Events
^events

[[WPL_EVENT07_REPORT_ATTEMPT]] - triggered when Eli initiates a valid Wards Point report interaction with either claimant.

[[WPL_EVENT07_WIN_RESOLUTION]] - triggered on successful completion of either an Initial Claimant Win or Counter-Claimant Win sequence.

[[WPL_EVENT07_LOSS_RESOLUTION]] - triggered on successful completion of either an Initial Claimant Loss or Counter-Claimant Loss sequence.
## Evidence
^evidence

[[WPL_E01_KEY]] - transferred from Eli to the winning faction during the successful report / key-handover sequence.

On successful completion of the winner sequence, [[WPL_EVENT07_WIN_RESOLUTION]] resolves the handover and removes [[WPL_E01_KEY]] from Eli's mission inventory.

The key is not returned, duplicated, or made available for a second handover after [[WPL_OWNERSHIP]] is committed.
## Exit / Transition
^exit-transition

Following successful completion of an Initial Claimant Win or Counter-Claimant Win sequence, [[WPL_EVENT07_WIN_RESOLUTION]] commits ownership and resolves the mission.

Return the player to normal gameplay.

The corresponding losing-faction response remains available as an unresolved follow-up until Eli later reports to / interacts with the losing faction and the appropriate loss sequence is fired and consumed.

Completion of the losing-faction response does not reopen or alter [[WPL_OWNERSHIP]].

After the losing response is consumed, no further Wards Point debrief sequence remains active.
## Gameplay Requirements
^gameplay-requirements

### WPL_EVENT07_REPORT_ATTEMPT

- Fire when Eli initiates a report interaction with either claimant after leaving Wards Point Library.
- Pass the faction Eli is currently interacting with to [[WPL_EVENT07_REPORT_ATTEMPT]].
- Event may fire only from a valid claimant report interaction.
- Do not perform ownership, reputation, key-transfer, cleanup, or consequence state changes in Gameplay.
- [[WPL_EVENT07_REPORT_ATTEMPT]] owns validation and narrative routing.
- Do not fire from normal faction dialogue unrelated to the Wards Point report interaction.

### WPL_EVENT07_WIN_RESOLUTION

- Trigger [[WPL_EVENT07_WIN_RESOLUTION]] immediately after completion of either successful winner narrative sequence.
- Pass the winning faction to the Event.
- Fire only once for the first successful report / key-handover resolution.
- Do not fire from incomplete-job responses or losing-faction dialogue.
- The Event owns ownership commitment, first-report completion, key-handover resolution, consequence availability, and post-mission state reconciliation.
- Preserve the appropriate losing-faction narrative as available until it has been fired and consumed.
- Do not clear any state still required by the pending losing-faction response or downstream consequence systems.
- Mission-only state no longer required by unresolved narrative or downstream consumers may be marked removable pending approval.
- Gameplay must not independently set ownership, apply reputation consequences, or clear mission state outside [[WPL_EVENT07_WIN_RESOLUTION]].

## Implementation Boundary
^implementation-boundary

Exact camera language, animation set, blocking, prop implementation, mission scripting and environment setup remain subject to Cinematic, Level Design and Engineering implementation.
