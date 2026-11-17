[[#^narrative-intent|Narrative Intent]]
[[#^entry-conditions|Entry Conditions]]
[[#^narrative-sequence|Narrative Sequence]]
	[[#^PeaceKeeper-Brief|PeaceKeeper Q&A 1]]
	[[#^PeaceKeeper-Brief-2|PeaceKeeper Q&A 2]]
	[[#^Bastion-Brief|Bastion Q&A]]
	[[#^Bastion-Brief-2|Bastion Q&A 2]]
[[#^dialogue-barks|Dialogue / Barks]]
[[#^player-experience|Player Experience]]
[[#^state-interaction|State Interaction]]
	[[#^state-reads|State Reads]]
	[[#^state-writes|State Writes]]
[[#^events|Events]]
[[#^evidence|Evidence]]
[[#^exit-transition|Exit / Transition]]
[[#^gameplay-requirements|Gameplay Requirements]]
[[#^visual-requirements|Graphic / Visual Requirements]]
[[#^implementation-boundary|Implementation Boundary]]
## Title
**WPL_06 - "Dinner for one"**
## ID
**WPL_06_ATRIUM**
## Narrative Intent
^narrative-intent

Bring the player to the point where Wards Point Library stops being an abstract faction objective and becomes a clearly valuable piece of the city.

The scene should complete Eli's understanding of the building by revealing the cafeteria / atrium as the final major space after the library floor, archive, generator, boiler and technical records have already established its practical value.

The required boss encounter provides the final physical obstacle. Once it is defeated and the atrium access doors are opened, the player should experience a deliberate shift from enclosed, hostile traversal into a large open space whose potential is immediately legible.

The atrium should support more than one believable future. Its scale, light, visibility and connection to the rest of the building should allow the player to understand why it could serve as a defended operational space, training or coordination area, food-production / greenhouse space, shelter, or community hub without assigning those possibilities exclusively to either faction.

At this point Eli has enough firsthand knowledge to critically test the claims previously made by both Peacekeepers and Bastion.

Optional radio conversations allow him to question each faction about what they would actually do with Wards Point. The questions and answers should reflect the information Eli has already received:

- the initial claimant is questioned against the fuller case made in [[WPL_01_HOOK]];
- the competing claimant is questioned against the shorter counter-position presented in [[WPL_03_COMPETING_CLAIM]].

These conversations should clarify practical differences between the factions rather than repeat their ideological pitches.

The Peacekeeper position should reveal the strengths and risks of preservation, planning, controlled access and institutional responsibility.

The Bastion position should reveal the strengths and risks of communal use, direct access, local decision-making and prioritizing immediate human need.

Neither conversation should identify a morally correct outcome or commit control of the library.

By the end of the scene, the player should understand that Wards Point is a significant long-term asset and that either faction can make legitimate use of it, but each will shape its future differently.

The final ownership decision remains deferred until Eli reports successful completion of the mission.
## Entry Conditions
^entry-conditions

Eli enters the cafeteria kitchen after climbing the elevator / service shaft from the basement.
## Narrative Sequence
^narrative-sequence

### Questions to Peacekeepers - ^QUESTIONS-to-PK

#### PeaceKeeper Initial Claimant - [[WPL_INITIAL_CLAIMANT]] = [PK]
^PeaceKeeper-Brief

##### Question 1

[Eli]
"You said this place was for the city. I found the archives downstairs. Building plans, utilities, technical manuals... a lot of useful shit." [pause]
"Who gets access to that?"

[CHARACTER_A]
"Not everyone, immediately."

[Eli]
"That's what I thought."

[CHARACTER_A]
"Because some of it matters too much to lose, Eli. We catalogue it, protect it, and put people who know what they're looking at in charge of it."

[pause]

"That doesn't mean nobody else gets it. It means we don't let the first person who needs kindling burn the electrical plans for half the city."

##### Question 2

[Eli]
"You talked about the people who can't look past their next meal. Elderly, injured, people who can't fight." [pause]
"So where do they fit in here?"

[CHARACTER_A]
"Here, if we can make it work."

[Eli]
"In the library?"

[CHARACTER_A]
"Some of them. Medical space, temporary shelter, training for the people who can still work. Maybe more once we know what the building can support."

[pause]

"But somebody has to organize it. Beds, food, medicine, power... none of that appears because everyone agrees it would be nice."

##### Question 3

[Eli]
"You keep saying organization. Process. Local control." [pause]
"How long before that turns into the same shit we already had?"

[CHARACTER_A]
"I don't know."

[Eli]
"That's reassuring."

[CHARACTER_A]
"I'm serious. I can't promise nobody will ever abuse it." [pause]
"What I can promise is that doing nothing doesn't protect anyone either. Somebody has to keep the generator running. Somebody has to decide where the medicine goes. Somebody has to make sure those records are still there next year." [pause]
"You don't have to trust the word 'authority.' I don't much either anymore."
"But the work still has to get done."

#### PeaceKeeper Counter-Claimant - [[WPL_INITIAL_CLAIMANT]] = [BASTION]
^PeaceKeeper-Brief-2

##### Question 1

[Eli]
"You said people need process." [pause]
"I'm standing in a building full of things people need. So what does 'process' actually mean here?"

[CHARACTER_B]
"It means we don't start stripping the place for whatever solves today's problem." [pause]
"We inventory what's here. Power. Heat. Records. Technical material. Space."
"Then we decide what can be used now and what has to survive long enough to matter later."

[Eli]
"And who decides that?"

[CHARACTER_B]
"People responsible for making sure there is still something left to decide about tomorrow."

##### Question 2

[Eli]
"I found the records downstairs."
"Plans for buildings. Utilities. Repairs. Half the city might be sitting in those cabinets." [pause]
"What would you do with them?"

[CHARACTER_B]
"Protect them first."

[Eli]
"Meaning lock them up."

[CHARACTER_B]
"Meaning don't lose them." [pause]
"Then get them into the hands of people who can actually use them. Engineers. Repair crews. Anyone we're training to keep systems running."
"We lose that archive and we don't get another one."

##### Question 3

[Eli]
"You also told me planning wasn't the problem. People were." [pause]
"That's convenient."

[CHARACTER_B]
"It's also true."

[Eli]
"GRE had experts. Governments had plans. The military had command structures."
"Everybody had somebody responsible." [pause]
"And here we are."

[CHARACTER_B]
"Yeah. Here we are." [pause]
"So tell me what the alternative is."
"Nobody keeps track of the medicine? Nobody maintains the generator? Nobody protects those plans because deciding who gets access feels too much like authority?" [pause]
"We can fuck this up, Eli. I'm not pretending we can't."
"But abandoning the work because somebody abused it before guarantees we fuck it up."

### Questions to Bastion - ^QUESTIONS-to-BASTION

#### Bastion Initial Claimant - [[WPL_INITIAL_CLAIMANT]] = [BASTION]
^Bastion-Brief

##### Question 1

[Eli]
"You said what you have, everyone gets to see. What you decide, you decide together." [pause]
"How does that work with this place?"

[CHARACTER_A]
"Same way, brother. People using the place get a voice in what happens to it."

[Eli]
"Everybody?"

[CHARACTER_A]
"Everybody affected by it gets heard. Doesn't mean every dumb idea wins." [pause]
"But nobody gets to sit in an office somewhere and tell the people living here what they need."

[Eli]
"So meetings."

[CHARACTER_A]
[laughs]
"Yeah, man. Horrible fucking meetings."

##### Question 2

[Eli]
"I found the archive downstairs. Building plans, utilities, repair manuals... things people might need years from now." [pause]
"What happens to that?"

[CHARACTER_A]
"We use it."

[Eli]
"That's not what I asked."

[CHARACTER_A]
"I know." [pause]
"We don't lock it away. Somebody needs a plan, a manual, whatever, they use it."

[Eli]
"And who makes sure it survives?"

[CHARACTER_A]
"We do." [pause]
"But I'm not going to bullshit you, brother. If it's between keeping somebody warm this winter and protecting a room full of paper, the person comes first."

##### Question 3

[Eli]
"This is the part I'm wondering about." [pause]
"You've got food, families, shelter, people needing things right now. What stops everything useful downstairs from getting stripped apart one emergency at a time?"

[CHARACTER_A]
"Nothing magical." [pause]
"We remind each other there is a tomorrow."

[Eli]
"That's it?"

[CHARACTER_A]
"That's a lot, man." [pause]
"Look, maybe we lose things. Maybe somebody makes a bad call. But I'd rather have the people living with that decision make it than somebody protecting a blueprint while the family upstairs freezes." [pause]
"We're trying to save people, Eli. The rest matters because it helps us do that."

#### Bastion Counter Claimant - [[WPL_INITIAL_CLAIMANT]] = [PK]
^Bastion-Brief-2

##### Question 1

[Eli]
"You said this place should belong to the people using it." [pause]
"What does that actually mean?"

[CHARACTER_B]
"Means exactly that, brother." [pause]
"Families living here get a say. People growing food get a say. People fixing shit get a say."

[Eli]
"And nobody's in charge?"

[CHARACTER_B]
"People can be responsible without owning everybody underneath them." [pause]
"You need somebody running the kitchen, run the kitchen. Doesn't mean they get to decide who deserves to eat."

##### Question 2

[Eli]
"There's more downstairs than I expected."
"Generator. Boiler. City plans. Technical manuals." [pause]
"Some of that could matter to people nowhere near this building."

[CHARACTER_B]
"Then let them use it."

[Eli]
"Just like that?"

[CHARACTER_B]
"Why not?" [pause]
"Copy it. Teach it. Bring somebody in who knows what they're looking at."
"What I don't want is somebody deciding those plans are too important for ordinary people to touch."

[Eli]
"And if something gets damaged?"

[CHARACTER_B]
"Then we learn not to do it again." [pause]
"Knowledge isn't safer because one guy has the key."

##### Question 3

[Eli]
"And when what people need today clashes with what somebody might need five years from now?"

[CHARACTER_B]
[pause] "Then it gets hard."

[Eli]
"That's your answer?"

[CHARACTER_B]
"Yeah." [pause]
"Anybody telling you there's an easy answer is selling you something."
"People starving today matter. So does tomorrow. You argue it out. You find another way if you can." [pause]
"But we don't sacrifice people standing in front of us because somebody with a clipboard says the future needs it more."

[Eli]
"And if that costs you something you can't replace?"

[CHARACTER_B]
"Then at least the people who paid that price were part of deciding it."
## Dialogue / Barks
^dialogue-barks

"They have a cafeteria here!" - [pleasantly surprised] - ^WPL-06-B01
## Player Experience
^player-experience

The scene begins with immediate physical pressure.

Eli climbs from the confined basement route into the cafeteria kitchen and encounters a mandatory boss infected. The kitchen should feel enclosed and hostile, using the commercial food-preparation space as a contained combat arena.

After the boss is defeated, the pace changes.

The player inspects and clears [[WPL_E06_ATRIUM_DOOR_LOCK]], opens the double doors and moves from the darker enclosed kitchen into the large glass atrium.

The transition should provide a strong sense of release and contrast. During the day, the atrium is bright, open and comparatively peaceful, allowing the player to slow down, look across the space and understand its potential. At night, you can see the stars, the lights still on in the city. It is quiet and peaceful and has been untouched by the infected.

The player should be free to explore the atrium at their own pace.

As Eli moves through the space, the player should be able to recognize several plausible uses for it without being explicitly directed toward a preferred faction outcome.

Once qualified [[WPL_ATRIUM_REACHED]] is set, [[WPL_ATRIUM_RADIO_CALLS]] governs optional calls to both claimant factions while Eli remains inside the atrium. The player may continue moving through and examining the atrium while speaking to either faction, both factions, or neither.

The experience should shift from surviving and clearing Wards Point to considering what the building could become.
## State Interaction
^state-interaction

### State Reads
^state-reads

[[WPL_INITIAL_CLAIMANT]]
[[WPL_BOSS_DEFEATED]]
[[WPL_RADIO_CALL_COMPLETE]]
[[WPL_MAIN_ENTRANCE_SECURED]]
[[WPL_ATRIUM_REACHED]]
[[WPL_ATRIUM_RADIO_CALLS]]
[[WPL_SECURED]]

### State Writes
^state-writes

[[WPL_BOSS_DEFEATED]] = "true" only through [[WPL_EVENT06_BOSS_DEFEATED]].

[[WPL_ATRIUM_REACHED]] = "true" only on eligible physical entry and when its descriptor prerequisites are satisfied. This is not an unconditional scene-entry write.

Departure consequences are defined by [[WPL_EVENT06_DEPARTURE]] and [[WPL_EVENT06_EARLY_EXIT]].

## Events
^events

[[WPL_EVENT06_BOSS_DEFEATED]] - triggered when the boss is defeated.
[[WPL_EVENT06_ARRIVAL]] - triggers [[#^WPL-06-B01]]
[[WPL_EVENT06_DEPARTURE]] - triggered when Eli exits the building; evaluates security and routes incomplete departure to [[WPL_EVENT06_EARLY_EXIT]].

## Evidence
^evidence

[[WPL_E06_ATRIUM_DOOR_LOCK]] - A deadbolt on the double doors to the atrium


## Exit / Transition
^exit-transition

A door at the far end of the atrium provides the player's exit from Wards Point Library.

Once Eli opens the door and exits the building, it closes and locks behind him.

The interior of Wards Point is no longer accessible through this exit during the remainder of the mission.

[[WPL_EVENT06_DEPARTURE]] evaluates security and applies departure cleanup. If [[WPL_SECURED]] is true and ownership unresolved, Eli may return to either faction for the first successful report and key handover in [[WPL_07_DEBRIEF]].

If security is incomplete, [[WPL_EVENT06_EARLY_EXIT]] invokes recovery instead. Successful completion remains unavailable until the outstanding requirements are met. Recovery must retain a viable return route other than this locked atrium exit.

## Gameplay Requirements
^gameplay-requirements

### WPL_EVENT06_ARRIVAL

- Fire when Eli exits the elevator / service shaft and enters the cafeteria kitchen.
- Trigger [[#^WPL-06-B01|WPL-06-B01]].
- If combat begins immediately and the bark would be obscured, defer the bark until Eli has a clear moment.
- Event should fire once only.
### Kitchen Boss Encounter

The player enters the cafeteria kitchen from the elevator / service shaft.

A level-appropriate boss infected occupies the kitchen.

The exact infected type is left to Gameplay / Combat Design, but the encounter must:

- remain contained to the cafeteria kitchen;
- prevent access to the atrium while the boss is alive;
- use the kitchen layout as the primary combat space;
- enable inspection / interaction with [[WPL_E06_ATRIUM_DOOR_LOCK]] when the boss is defeated;

The boss encounter is mandatory before the player can enter the atrium.

Successfully defeating the boss triggers [[WPL_EVENT06_BOSS_DEFEATED|BOSS DEFEATED]].

### Atrium Door Lock

- [[WPL_E06_ATRIUM_DOOR_LOCK]] remains unavailable for interaction until [[WPL_BOSS_DEFEATED]] = true.
- Once available, the player can inspect and clear / unlock the deadbolt through gameplay.
- Clearing the lock makes the atrium access doors openable.
- Opening the doors does not set [[WPL_ATRIUM_REACHED]] until Eli actually crosses into the atrium.

### WPL_ATRIUM_REACHED

- When Eli passes through the atrium access doors and enters the atrium proper, [[WPL_ATRIUM_REACHED]] is eligible for a state change.
- Set [[WPL_ATRIUM_REACHED]] to "true" only if requirements are met.
- This state should be set only once.

### Atrium Radio Calls

- Enable optional radio calls only while Eli is inside the atrium and the prerequisites in [[WPL_ATRIUM_RADIO_CALLS]] are satisfied: qualified [[WPL_ATRIUM_REACHED]], completed [[WPL_RADIO_CALL_COMPLETE]], and [[WPL_MAIN_ENTRANCE_SECURED]].
- Eli may initiate either call, both calls, or neither.
- The calls do not commit ownership of Wards Point.
- Normal player movement should remain available during the conversations.
- Radio options remain available while Eli is inside the atrium until the scene's exit condition is met.

## Graphic / Visual Requirements
^visual-requirements

### Cafeteria Kitchen
^cafeteria-kitchen

The elevator / service shaft should open directly into the cafeteria kitchen.

The kitchen should be visually distinct from the public library spaces and should clearly read as a commercial / institutional food-preparation area.

Visual elements may include:

- stainless-steel preparation surfaces;
- industrial sinks;
- ovens / ranges;
- refrigeration units;
- dry-storage shelving;
- serving equipment;
- food-preparation counters;
- cookware and utensils;
- utility connections;
- service signage;
- evidence of hurried abandonment.

The kitchen should provide enough space and environmental structure to support a contained boss encounter.

### Atrium Access Doors
^atrium-doors

A set of substantial double doors separates the cafeteria kitchen from the cafeteria seating / glass atrium area.

During the boss encounter the doors remain closed, locked or barricaded.

When the boss is defeated, the barrier can be removed or the doors unlocked, allowing the player to enter the atrium.

The doors should provide a clear visual transition from the darker, enclosed kitchen into the brighter and more open atrium beyond.

### Atrium

- large glass enclosure;
- strong natural light by day;
- broad sightlines over the surrounding city;
- enough open floor area to plausibly support training, shelter, community use, or cultivation;
- cafeteria seating / public-use remnants;
- visual evidence that it is adaptable rather than already faction-coded;
- peaceful contrast with the kitchen.

## Implementation Boundary
^implementation-boundary

Exact camera language, animation set, blocking, prop implementation, mission scripting and environment setup remain subject to Cinematic, Level Design and Engineering implementation.
