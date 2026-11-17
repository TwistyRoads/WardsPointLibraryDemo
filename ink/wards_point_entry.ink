// Wards Point Library: playable entry vertical slice, V0.01.
// Authored dialogue below is taken from WPL_01_HOOK and WPL_03_COMPETING_CLAIM.
// The navigational choices and connective action prose are adaptation material.
// This does not yet implement combat, clearing, atrium calls, debrief, or ownership.

VAR initial_claimant = ""
VAR brief_complete = false
VAR entered = false
VAR key_obtained = false
VAR entrance_secured = false
VAR radio_call_complete = false

-> setup

=== setup ===
WARDS POINT LIBRARY — ENTRY DEMO
The opening faction is chosen by Eli's prior faction standing in the full quest. This standalone setup chooses that inherited context, not the library's eventual owner.
* [Peacekeeper standing equal to or higher than Bastion (tie/default)]
    ~ initial_claimant = "PK"
    -> brief_pk
* [Bastion standing higher than Peacekeeper]
    ~ initial_claimant = "BASTION"
    -> brief_bastion

=== brief_pk ===
// Original spoken dialogue: WPL_01_HOOK, PeaceKeeper Brief.
Peacekeeper representative: "Eli! Glad I caught you. There is something I want to talk to you about."
Peacekeeper representative: "I wanted to talk to you about what we are trying to do here. Our overall goals."
Eli: "Umm... Okay."
Peacekeeper representative: "It's no secret that things are getting worse. That the leaders we have counted on have failed us miserably."
Eli: "That's generous."
Peacekeeper representative: "Okay granted. I am not trying to defend their actions. But you understand it's the people that failed, not the mechanism, right? But the need for process, order, planning... that still remains."
Eli: "You mean, do I support the Council of Mankind or the local government? Is that what you're asking?"
Peacekeeper representative: "No, no, nothing like that. This isn't a loyalty test."
Peacekeeper representative: "Look, governments have failed us, individuals have failed us. Every time we looked for help outside of Villedor, we have been left paying the price. I get that."
Peacekeeper representative: "The world has changed, and 'order', as it was defined, has failed miserably. You, me, and just about everyone else has paid the price for that in blood, and tears."
Eli: "Is this a lesson in semantics? Or did you have a point?"
Peacekeeper representative: "To the point. I like that."
Peacekeeper representative: "I want you to consider something. We still need organization, just... locally. Because, let's face it. The days of fly-away weekends are gone. If we don't start thinking beyond our noses, we will be too. We need people thinking and doing things that do not pay off immediately..."
Eli: "Because it has worked so well in the past?"
Peacekeeper representative: "No... in spite of how fucked-up it has been in the past. That is the point."
Peacekeeper representative: "Villedor is not a city of young healthy people fighting to survive. We have elderly, infirm, injured, and people so devastated they have just given up. They need help too."
Peacekeeper representative: "Are we supposed to do to them what governments and NGO's have done to us?"
Eli: "Of course not."
Peacekeeper representative: "And that is why I wanted to talk to you. Look, we are trying to hold on to a future. We don't have everything planned for what it can be, or what it will look like. But there are others, like us, that see the need to plan, locally. To take the steps to prepare for the worst while we hope for the best."
Eli: "You have a point in here somewhere, what is it?"
Peacekeeper representative: "Wards Point Library. I want to ask you to clear it out for us."
Peacekeeper representative: "The library is a nest for infected. It is also a defensible location, has a large open internal space that can be useful for training, a safehouse for patrols, storage for equipment or emergency medical if needed. It also has a generator in the basement, so it does not need the grid."
Eli: "So... take it. You have enough people to do that."
Peacekeeper representative: "That is the problem. We can't be seen to do it. Locally, Villedor has a claim on public buildings. If we send a force, that will bring the authorities we just discussed down on us. They will task the military."
Peacekeeper representative: "It is the difference between an independent actor and an organized armed force. One is a 'coincidence'. The other is a threat."
Eli: "Ah, I get it. You want a scapegoat!"
Peacekeeper representative: "No. Not a scapegoat. We have some connections, in the military. That's how we know we will be covered. They assure us that they will do nothing to interfere if we occupy it." [pause - clasps hands on the desk] "And we can't take people away from guarding caches or your friends at Bastion will jump in."
Eli: "You think they would attack you to get supplies?"
Peacekeeper representative: "Eli, look, I know you have friends over there. That is fine. I am not trying to tell you who you can or cannot be friends with. But the simple truth is we are both trying to get our hands on as many resources as we can. We have had run-ins in the past with Bastion, and I fully expect we will have run-ins in the future."
Eli: "What about these military contacts. Why don't they take it?"
Peacekeeper representative: "That is... difficult, and I don't have a complete answer. What I can tell you is that they have problems of their own right now and not everyone agrees with what the leadership is saying."
Eli: "Problems? What do you mean?"
Peacekeeper representative: "I wish that I could answer that. The truth is I don't know. What I do know is that the library is significant. Not for us alone, for the city. And I know we can't take it as we are at the moment. We simply don't have the people to spare."
Peacekeeper representative: "But you can do this. It won't be easy, there are infected there, but you are capable. And resourceful. We need you to get in, secure the front door so nothing follows you in. Clear the building and come back here when you are done."
Eli: "You make it sound so easy."
Peacekeeper representative: "No, I am just not lying to you or myself about the task or what you can do."
Peacekeeper representative: "Go scout it. Make your plan for entry and get it done. People who can't do this, people who don't have the luxury of looking beyond the next meal, are counting on people who can. We need this Eli. Questions?"
Eli: "No. It seems pretty clear. I'll take a look."
Peacekeeper representative: "Best of luck."
~ brief_complete = true
-> arrival

=== brief_bastion ===
// Original spoken dialogue: WPL_01_HOOK, Bastion Brief.
Bastion representative: "Eli! Hey, you got a minute? I want to ask you a favor brother."
Eli: "Sure man, what's up?"
Bastion representative: "That library at Wards Point, have you seen it?"
Bastion representative: "I need you to do a solid and clear it out for us."
Eli: "Alone?"
Bastion representative: "Yeah. That's the bitch of it. We have those order followers dogging all of our members. Three of us on a street corner and they start showing up to bust heads. Gotta be a solo."
Eli: "Really? Are they really that bad man? They are just trying to survive."
Bastion representative: "It's not that they want to survive. Everyone wants to survive. It's how they want to decide how everyone, not just themselves, gets to survive... see the difference?"
Eli: "I don't follow."
Bastion representative: "Listen man, you know what happened. We all know what happened. Harran was fucked up beyond all repair."
Bastion representative: "I don't want to hear that song again man, do you?"
Eli: "You mean the GRE?"
Bastion representative: "Them, yeah. And everyone that thinks like them. Emergency powers, lockdowns, military in the street. That world is dying man. The center sitting on shit we all need. Fuck that man. We need to pull the plug."
Eli: "Yeah... I have a few friends over there, maybe we can talk to them?"
Bastion representative: "I know... I know."
Bastion representative: "That's why I am talking to ya. Figure you can skate close without getting bounced."
Eli: "What's so important about the library?"
Bastion representative: "Food, man. It is close enough to the edge we can hunt from there. Big enough we can get some family in there. It has a gennie, it can be barricaded.... what isn't important about it?"
Bastion representative: "It'll be a hub for community man. What we have, everyone can see. What we decide, we decide there."
Eli: "Okay, I can see that, but I still don't get why it has to be alone."
Bastion representative: "Look"
Bastion representative: "
Eli: "So a quick in and out?"
Bastion representative: "Mostly. It's a nest, nothing you shouldn't be able to handle. So yeah, pop in. Make sure you lock the door to keep the infected out. Clear it, and come back and tell me. We can slip in quick if there are no infected inside."
Eli: "And that's it?"
Bastion representative: "That's it man. Easy peasy and possession is 9/10ths of the law brother... You in?"
Eli: "Yeah, I'm in."
Bastion representative: "He's in boys! Eli is the man!"
Bastion representative: "Good luck brother!"
~ brief_complete = true
-> arrival

=== arrival ===
// The following three lines reproduce descriptive prose from WPL_02_ARRIVAL.
The main public floor opens ahead through library stacks, reading areas and adjoining offices.
The upper glass atrium is visible from the entrance level, but the main stairs leading to it are blocked and cannot be used.
An information kiosk sits just inside the main entrance. The key required to secure the entrance hangs behind the kiosk.
~ entered = true
-> foyer

=== foyer ===
// Adaptation navigation interface; source progression in WPL_02_ARRIVAL.
You are at the public entrance to Wards Point Library.
+ [Look behind the information kiosk] -> kiosk
+ [Try to lock the main entrance] -> door
+ [Examine the blocked stairs to the upper atrium] -> stairs
+ [Scout the main floor without locking the entrance] -> floor_glance

=== kiosk ===
{ key_obtained:
    -> kiosk_empty
- else:
    -> kiosk_key
}

=== kiosk_key ===
The key hangs behind the information kiosk. Taking it will not secure the door by itself.
* [Take the key] 
    ~ key_obtained = true
    -> foyer
* [Leave the key for now] -> foyer

=== kiosk_empty ===
The hook is empty; the key is now in Eli's possession.
-> foyer

=== door ===
{ key_obtained:
    -> lock_entrance
- else:
    -> no_key
}

=== no_key ===
The main entrance cannot be secured without the key hanging behind the information kiosk.
-> foyer

=== stairs ===
The main stairs to the upper glass atrium are blocked. The route through the lower interior remains to be explored.
-> foyer

=== floor_glance ===
The main floor holds stacks, reading areas and adjoining offices. Eli can scout ahead, but the entrance is still unsecured.
-> foyer

=== lock_entrance ===
// Only the action of locking the entrance completes WPL_EVENT02_DOOR.
~ entrance_secured = true
Eli turns the recovered key in the lock. The main entrance is secured.
-> rival_select

=== rival_select ===
{ initial_claimant == "PK":
    -> rival_bastion
- else:
    -> rival_pk
}

=== rival_bastion ===
// Original spoken dialogue: WPL_03_COMPETING_CLAIM, Bastion Counter Brief.
Bastion radio contact: "Eli, brother. Heard you made it into Wards Point."
Eli: "News travels fast."
Bastion radio contact: "Only when people are watching the right things."
Bastion radio contact: "Listen. I know who sent you. Doesn't matter."
Eli: "Sounds like it matters."
Bastion radio contact: "Matters who gets there first."
Bastion radio contact: "That place can feed people. House people."
Bastion radio contact: "Give us somewhere that belongs to the ones using it, not somebody sitting behind a desk deciding who gets what."
Eli: "And you want me to call you when it's clear."
Bastion radio contact: "That's all I'm asking, brother. Finish what you're doing. Then come to us first."
Eli: "Kinda busy man."
Bastion radio contact: "Stay safe."
~ radio_call_complete = true
-> slice_end

=== rival_pk ===
// Original spoken dialogue: WPL_03_COMPETING_CLAIM, Peacekeeper Counter Brief.
Peacekeeper radio contact: "Eli. I know who sent you in there."
Eli: "Then I guess this isn't a social call."
Peacekeeper radio contact: "No. But hear me out before you decide anything."
Peacekeeper radio contact: "That library is more than four walls. Records, technical manuals, maps, space to train people. Things we are going to need six months from now, not just tonight."
Eli: "That's what everyone says before they start deciding what's best for everybody else."
Peacekeeper radio contact: "And sometimes somebody has to make sure there is still something left to decide about."
Peacekeeper radio contact: "People need food. Medicine. Safe places. They also need process, Eli. Somebody keeping track. Somebody planning beyond tomorrow."
Eli: "Process?"
Eli: "Harran had process. The GRE had process. Governments had plans, emergency powers, checkpoints, containment zones."
Eli: "Look how that worked out."
Peacekeeper radio contact: "I know."
Peacekeeper radio contact: "But they failed people. That doesn't mean planning is the problem."
Peacekeeper radio contact: "Throw every structure away because the people running it fucked up, and the weakest people pay first."
Eli: "And I'm supposed to believe you'll be different."
Peacekeeper radio contact: "No."
Peacekeeper radio contact: "I'm asking you to give us the chance to prove it."
Peacekeeper radio contact: "When you're done in there, come to us first."
~ radio_call_complete = true
-> slice_end

=== slice_end ===
The rival call ends. Nobody has received the key, and ownership remains undecided.
This entry-route prototype ends here. Main-floor exploration and the eventual report and handover are the next implementation stage.
* [Finish the entry demonstration] -> END
