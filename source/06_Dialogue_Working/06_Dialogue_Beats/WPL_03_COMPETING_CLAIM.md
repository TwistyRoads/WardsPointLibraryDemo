[[#^narrative-intent|Narrative Intent]]
[[#^entry-conditions|Entry Conditions]]
[[#^narrative-sequence|Narrative Sequence]]
	[[#^Bastion-brief|Bastion Counter Brief]]
	[[#^Peacekeeper-Brief|Peacekeeper Counter Brief]]
[[#^player-experience|Player Experience]]
[[#^state-interaction|State Interaction]]
	[[#^state-reads|State Reads]]
	[[#^state-writes|State Writes]]
[[#^exit-transition|Exit / Transition]]
[[#^audio-requirements|Audio Requirements]]
[[#^implementation-boundary|Implementation Boundary]]
## Title
**WPL-03-"Before you begin"**
## ID
**WPL_03_COMPETING_CLAIM**
## Narrative Intent
^narrative-intent

Introduce the competing faction's claim, via [[03_Factions_and_Characters#^character-b|Character B— Competing Radio Contact]], to Wards Point after Eli has entered the library and secured its main entrance.

The radio contact should:

- establish that the competing faction is aware Eli is operating inside Wards Point;
- provide a concise counter-framing to the initial briefing without repeating a full faction pitch;
- explain why the competing faction considers control of the library important;
- make clear that Eli can still report the secured location to them first;
- preserve the player's ability to complete the mission for either claimant.
## Entry Conditions
^entry-conditions

[[WPL_EVENT02_DOOR]] has fired.
## Narrative Sequence
^narrative-sequence

### Bastion Counter Brief - [[WPL_INITIAL_CLAIMANT]] = [PK]
^Bastion-brief

[CHARACTER_B] - [casual, relaxed]
"Eli, brother. Heard you made it into Wards Point."

[Eli]
"News travels fast."

[CHARACTER_B]
"Only when people are watching the right things."
[pause - voice tightens]
"Listen. I know who sent you. Doesn't matter."

[Eli]
"Sounds like it matters."

[CHARACTER_B] - [calm, but even, no emotion]
"Matters who gets there first."
[pause]
"That place can feed people. House people."
[pause - 1 second] 
"Give us somewhere that belongs to the ones using it, not somebody sitting behind a desk deciding who gets what."

[Eli]
"And you want me to call you when it's clear."

[CHARACTER_B]
"That's all I'm asking, brother. Finish what you're doing. Then come to us first."

[Eli]
"Kinda busy man."

[CHARACTER_B]
"Stay safe."
### Peacekeeper Counter Brief - [[WPL_INITIAL_CLAIMANT]] = [Bastion]
^Peacekeeper-Brief

[CHARACTER_B]
"Eli. I know who sent you in there."

[Eli]
"Then I guess this isn't a social call."

[CHARACTER_B]
"No. But hear me out before you decide anything."
[pause]
"That library is more than four walls. Records, technical manuals, maps, space to train people. Things we are going to need six months from now, not just tonight."

[Eli]
"That's what everyone says before they start deciding what's best for everybody else."

[CHARACTER_B]
"And sometimes somebody has to make sure there is still something left to decide about."
[pause]
"People need food. Medicine. Safe places. They also need process, Eli. Somebody keeping track. Somebody planning beyond tomorrow."

[Eli]
"Process?"
[beat]
"Harran had process. The GRE had process. Governments had plans, emergency powers, checkpoints, containment zones."
[pause]
"Look how that worked out."

[CHARACTER_B]
"I know."
[pause]
"But they failed people. That doesn't mean planning is the problem."
"Throw every structure away because the people running it fucked up, and the weakest people pay first."

[Eli]
"And I'm supposed to believe you'll be different."

[CHARACTER_B]
"No."
[pause]
"I'm asking you to give us the chance to prove it."
"When you're done in there, come to us first."
## Player Experience
^player-experience

[[03_Factions_and_Characters#^character-b|Character B]] contacts Eli by radio immediately after [[WPL_EVENT02_DOOR]] fires. The conversation plays while normal player movement and defensive actions remain available. Eli may continue moving while speaking, but the scene should avoid requiring precise interaction timing until the call concludes.
## State Interaction
^state-interaction

### State Reads
^state-reads

[[WPL_MAIN_ENTRANCE_SECURED]] = "true"
[[WPL_INITIAL_CLAIMANT]]
### State Writes
^state-writes

[[WPL_RADIO_CALL_COMPLETE]] = "true"
## Exit / Transition
^exit-transition

Radio call ends, [[#^state-writes]] occur, normal gameplay continues
## Audio Requirements
^audio-requirements

Standard radio communication treatment
## Implementation Boundary
^implementation-boundary

Exact camera language, animation set, blocking, prop implementation, mission scripting and environment setup remain subject to Cinematic, Level Design and Engineering implementation.
