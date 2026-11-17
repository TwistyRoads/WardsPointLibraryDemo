[[#^narrative-intent|Narrative Intent]]
[[#^entry-conditions|Entry Conditions]]
[[#^narrative-sequence|Narrative Sequence]]
	[[#^Beat-01|Mission Briefing]]
		[[#^PeaceKeeper-Brief|PeaceKeeper Brief]]
		[[#^Bastion-brief|Bastion Brief]]
[[#^dialogue-barks|Dialogue / Barks]]
[[#^state-interaction|State Interaction]]
	[[#^state-reads|State Reads]]
	[[#^state-writes|State Writes]]
[[#^exit-transition|Exit / Transition]]
[[#^gameplay-requirements|Gameplay Requirements]]
[[#^cinematic-requirements|Cinematic Requirements]]
[[#^visual-requirements|Graphic / Visual Requirements]]
[[#^implementation-boundary|Implementation Boundary]]
## Title:
**WPL-01-"We need a favour."**
## ID:
**WPL_01_HOOK**
## Narrative Intent
^narrative-intent

Establish the briefing faction's worldview and make its claim on Wards Point feel reasonable, grounded and preferable before Eli enters the library.

The scene should not present a neutral summary of the conflict. The briefing faction is allowed to make its strongest case conversationally: why Wards Point matters, why its intended use is necessary, why the alternative is dangerous or inadequate, and why Eli should trust its judgment.

The purpose is to give the player a credible first framing of the choice without resolving it.

If the Peacekeeper side briefs Eli, the scene should emphasize duty, continuity, protection of the vulnerable, the failure of existing command structures, and the need to preserve order locally even as larger institutions collapse.

If Bastion briefs Eli, the scene should emphasize institutional betrayal, failed promises, distrust of concentrated authority, local accountability, transparency, and the right of communities to survive without surrendering control to another hierarchy.

Eli's responses should remain comparatively consistent in character, but his degree of trust, skepticism, familiarity and pushback should be state-dependent.

The later rival radio contact provides the opportunity for a counter position, but will not attempt to reproduce the full persuasive function of this scene. It will instead provide compressed counter-framing through facts, objections, justification and appeals designed to make Eli reconsider the assumptions established here.

## Entry Conditions
^entry-conditions

Entry conditions for this mission are defined by the Narrative Director and wider campaign progression.

Wards Point Library is intended as an early-mid-game side quest. It should become available only after Eli has had enough prior contact with both major factions for meaningful relationship values to exist and for either faction to plausibly trust him with an independent task.

The mission should occur early enough that its outcome can influence later play.

Its resolution may contribute to:

later inter-faction rivalry and trust;

faction attitude toward Eli;

control and use of Wards Point;

later environmental state;

downstream access to resources, knowledge, shelter, food production or infrastructure capability;

later faction references, callbacks or consequences where production scope permits.

The exact campaign gate, prerequisite missions, relationship thresholds, and any world-state exclusions are production decisions and should be assigned by the Narrative Director.

The mission should not become available so late that ownership of Wards Point can no longer produce meaningful downstream consequences.
## Narrative Sequence
^narrative-sequence

### Beat 01 - Opening
^Beat-01

#### PeaceKeeper Brief - [[WPL_INITIAL_CLAIMANT]] = [PK]
^PeaceKeeper-Brief

[CHARACTER-A] - [[03_Factions_and_Characters#^character-a|Character A — Initial Quest Giver]]
"Eli! Glad I caught you. There is something I want to talk to you about."

[[#^office-setting|Isolate Eli to talk]]
"I wanted to talk to you about what we are trying to do here. Our overall goals."

[Eli]
"Umm... Okay."

[CHARACTER-A]
"It's no secret that things are getting worse. That the leaders we have counted on have failed us miserably."

[Eli]
"That's generous."

[CHARACTER-A] - [chuckles]
"Okay granted. I am not trying to defend their actions. But you understand it's the people that failed, not the mechanism, right? But the need for process, order, planning... that still remains."

[Eli] - [wary]
"You mean, do I support the Council of Mankind or the local government? Is that what you're asking?"

[CHARACTER-A]
"No, no, nothing like that. This isn't a loyalty test." [pause - 1 second]
"Look, governments have failed us, individuals have failed us. Every time we looked for help outside of Villedor, we have been left paying the price. I get that." [pause - 1 second]
"The world has changed, and 'order', as it was defined, has failed miserably. You, me, and just about everyone else has paid the price for that in blood, and tears."
[[#^folder-contents|Picks up folder]]

[Eli]
"Is this a lesson in semantics? Or did you have a point?"

[CHARACTER-A] - [smiles]
"To the point. I like that."
[opens the folder]
"I want you to consider something. We still need organization, just... locally. Because, let's face it. The days of fly-away weekends are gone. If we don't start thinking beyond our noses, we will be too. We need people thinking and doing things that do not pay off immediately..."

[Eli]
"Because it has worked so well in the past?"

[CHARACTER-A] - [pause, then leans forward]
"No... in spite of how fucked-up it has been in the past. That is the point." [sits back in chair]
"Villedor is not a city of young healthy people fighting to survive. We have elderly, infirm, injured, and people so devastated they have just given up. They need help too." [pause - 1 second]
"Are we supposed to do to them what governments and NGO's have done to us?"

[Eli] - [a pause, thinking, then shakes head]
"Of course not." 

[CHARACTER-A] - [nods, purses lips]
"And that is why I wanted to talk to you. Look, we are trying to hold on to a future. We don't have everything planned for what it can be, or what it will look like. But there are others, like us, that see the need to plan, locally. To take the steps to prepare for the worst while we hope for the best."

[Eli]
"You have a point in here somewhere, what is it?"

[CHARACTER-A] - [hands the folder to Eli]
"Wards Point Library. I want to ask you to clear it out for us."
[Eli looks through the folder] - [[#^folder-contents|Folder Contents]]

[CHARACTER-A] - [continues while Eli is looking at the folder]
"The library is a nest for infected. It is also a defensible location, has a large open internal space that can be useful for training, a safehouse for patrols, storage for equipment or emergency medical if needed. It also has a generator in the basement, so it does not need the grid."

[Eli]
"So... take it. You have enough people to do that."

[CHARACTER-A]
"That is the problem. We can't be seen to do it. Locally, Villedor has a claim on public buildings. If we send a force, that will bring the authorities we just discussed down on us. They will task the military." [pause - 1 second]
"It is the difference between an independent actor and an organized armed force. One is a 'coincidence'. The other is a threat."

[Eli]
"Ah, I get it. You want a scapegoat!"

[CHARACTER-A]
"No. Not a scapegoat. We have some connections, in the military. That's how we know we will be covered. They assure us that they will do nothing to interfere if we occupy it." [pause - clasps hands on the desk] "And we can't take people away from guarding caches or your friends at Bastion will jump in."

[Eli] - [looks up sharply]
"You think they would attack you to get supplies?"

[CHARACTER-A] - [[#^raised-eyebrow|raised eyebrow]]
"Eli, look, I know you have friends over there. That is fine. I am not trying to tell you who you can or cannot be friends with. But the simple truth is we are both trying to get our hands on as many resources as we can. We have had run-ins in the past with Bastion, and I fully expect we will have run-ins in the future."

[Eli]
"What about these military contacts. Why don't they take it?"

[CHARACTER-A] - [thoughtful]
"That is... difficult, and I don't have a complete answer. What I can tell you is that they have problems of their own right now and not everyone agrees with what the leadership is saying."

[Eli]
"Problems? What do you mean?"

[CHARACTER-A]
"I wish that I could answer that. The truth is I don't know. What I do know is that the library is significant. Not for us alone, for the city. And I know we can't take it as we are at the moment. We simply don't have the people to spare." [pause - 1 second]
"But you can do this. It won't be easy, there are infected there, but you are capable. And resourceful. We need you to get in, secure the front door so nothing follows you in. Clear the building and come back here when you are done."

[Eli]
"You make it sound so easy." [Eli hands the folder back]

[CHARACTER-A]
"No, I am just not lying to you or myself about the task or what you can do." [places the folder on the desk]
"Go scout it. Make your plan for entry and get it done. People who can't do this, people who don't have the luxury of looking beyond the next meal, are counting on people who can. We need this Eli. Questions?"

[Eli] - [rising to leave]
"No. It seems pretty clear. I'll take a look."

[CHARACTER-A] - [shakes Eli's hand]
"Best of luck."
### Bastion Brief - [[WPL_INITIAL_CLAIMANT]] = [BASTION]
^Bastion-brief

[CHARACTER-A] - [[03_Factions_and_Characters#^character-a|Character A — Initial Quest Giver]]
"Eli! Hey, you got a minute? I want to ask you a favor brother."

[Eli]
"Sure man, what's up?"

[CHARACTER-A]
"That library at Wards Point, have you seen it?" [Eli nods]
"I need you to do a solid and clear it out for us."

[Eli] - [crosses arms and looks puzzled]
"Alone?"

[CHARACTER-A]
"Yeah. That's the bitch of it. We have those [[03_Factions_and_Characters#^peacekeeper-position|order followers]] dogging all of our members. Three of us on a street corner and they start showing up to bust heads. Gotta be a solo."

[Eli]
"Really? Are they really that bad man? They are just trying to survive."

[CHARACTER-A]
"It's not that they want to survive. Everyone wants to survive. It's how they want to decide how everyone, not just themselves, gets to survive... see the difference?"

[Eli]
"I don't follow."

[CHARACTER-A]
"Listen man, you know what happened. We all know what happened. Harran was fucked up beyond all repair." [[#^WPL-B01|fubar]] [CHARACTER-A] - [laughs and waves]
"I don't want to hear that song again man, do you?"

[Eli]
"You mean the GRE?"

[CHARACTER-A]
"Them, yeah. And everyone that thinks like them. Emergency powers, lockdowns, military in the street. That world is dying man. The center sitting on shit we all need. Fuck that man. We need to pull the plug."

[Eli]
"Yeah... I have a few friends over there, maybe we can talk to them?"

[CHARACTER-A]
"I know... I know." [pause - 1 second]
"That's why I am talking to ya. Figure you can skate close without getting bounced."

[Eli]
"What's so important about the library?"

[CHARACTER-A]
"Food, man. It is close enough to the edge we can hunt from there. Big enough we can get some family in there. It has a gennie, it can be barricaded.... what isn't important about it?" [pause - 1 second]
"It'll be a hub for community man. What we have, everyone can see. What we decide, we decide there."

[Eli]
"Okay, I can see that, but I still don't get why it has to be alone."

[CHARACTER-A]
"Look" [leans close and whispers]
"We have some people that know the government pukes. They are prepping for something. Don't know what yet, but, they are grabbing resources. Buildings, medicine. Staking claims. It is only a matter of time before they want that building. [returns to normal voice and separation]
Plus those [[03_Factions_and_Characters#^peacekeeper-position|authority pukes]] are watching it close. They have an observation post set up down the block. I don't want to see it fall into their hands. We lose the hunting, and the communal space. If we try to move in, they'll bounce us. Then we are fighting them and the infected in the street."

[Eli]
"So a quick in and out?"

[CHARACTER-A]
"Mostly. It's a nest, nothing you shouldn't be able to handle. So yeah, pop in. Make sure you lock the door to keep the infected out. Clear it, and come back and tell me. We can slip in quick if there are no infected inside."

[Eli]
"And that's it?"

[CHARACTER-A]
"That's it man. Easy peasy and possession is 9/10ths of the law brother... You in?"

[Eli]
"Yeah, I'm in."

[CHARACTER-A] - [loudly to the room]
"He's in boys! Eli is the man!" [[#^WPL-B02|cheers]]
[claps Eli on the shoulder]
"Good luck brother!"

## Dialogue / Barks
^dialogue-barks

"FUBAR man!" - [voice from off scene, laughter trailing off] - ^WPL-B01

"Yeah!" - [cheering and weak applause] - ^WPL-B02

## State Interaction
^state-interaction

### State Reads
^state-reads

[[WPL_INITIAL_CLAIMANT]]
	PK → play Peacekeeper briefing variant. - [[#^PeaceKeeper-Brief]]
	BASTION → play Bastion briefing variant. - [[#^Bastion-brief]]

### State Writes
^state-writes

[[WPL_BRIEF_COMPLETE]] = true

## Exit / Transition
^exit-transition

- Briefing ends.
- Wards Point Library becomes the active mission objective.
- Player is free to travel to Wards Point.

## Gameplay Requirements
^gameplay-requirements

- Trigger correct briefing variant from [[WPL_INITIAL_CLAIMANT]].
- On briefing completion, activate Wards Point Library objective.
- No player-choice branch is required within the briefing itself.

## Cinematic Requirements
^cinematic-requirements

### Beat-01
^CR-Beat-01

 [[#^PeaceKeeper-Brief|PK Brief]] - [CHARACTER-A] sees or meets Eli in a hallway or open area in the HQ. They escort him into a private setting/office/briefing room etc... and offer him a seat and take one themselves. [Eli] starts the conversation looking unsure of what is being proposed. ^office-setting

[[#^PeaceKeeper-Brief|PK Brief]] - [Folder Contents] - Images of the library exterior. Floorplan of the main floor and atrium. ^folder-contents

[[#^PeaceKeeper-Brief|PK Brief]] - [Raised Eyebrow] - Closeup of [CHARACTER-A] looking at [Eli]. A tight shot that clearly shows their eyebrow raising in silent disbelief. ^raised-eyebrow

## Graphic / Visual Requirements
^visual-requirements

[folder] A folder containing papers and photos discussing the Wards Point Library. ^GVR-01

## Implementation Boundary
^implementation-boundary

Exact camera language, animation set, blocking, prop implementation, mission scripting and environment setup remain subject to Cinematic, Level Design and Engineering implementation.
