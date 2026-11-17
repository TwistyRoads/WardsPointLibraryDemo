// Wards Point Library: exploration and atrium vertical slice, V0.02.
// Authored dialogue below is taken from WPL_01_HOOK and WPL_03_COMPETING_CLAIM.
// The navigational choices and connective action prose are adaptation material.
// Gameplay encounters are represented by deliberate text actions, not a combat simulation.
// This does not yet implement report/handover, losing faction consequences, or ownership.

VAR initial_claimant = ""
VAR brief_complete = false
VAR entered = false
VAR key_obtained = false
VAR entrance_secured = false
VAR radio_call_complete = false

VAR main_floor_cleared = false
VAR basement_cleared = false
VAR boss_defeated = false
VAR atrium_door_unlocked = false
VAR atrium_reached = false
VAR atrium_intro_seen = false
VAR inside_atrium = false
VAR secured = false
VAR departed = false
VAR recovery_visits = 0
VAR waldo_seen = false
VAR stairs_bark_seen = false
VAR medicine_seen = false
VAR archives_sign_seen = false
VAR community_seen = false
VAR generator_seen = false
VAR municipal_archive_seen = false
VAR elevator_seen = false
VAR kitchen_bark_seen = false
VAR pk_question_1 = false
VAR pk_question_2 = false
VAR pk_question_3 = false
VAR bastion_question_1 = false
VAR bastion_question_2 = false
VAR bastion_question_3 = false

-> setup

=== setup ===
WARDS POINT LIBRARY — EXPLORATION DEMO
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
// Adaptation navigation choices; the original allows entry without first securing the door.
You are at the public entrance of Wards Point Library.
+ {not key_obtained} [Look behind the information kiosk] -> kiosk
+ {key_obtained} [Inspect the empty key hook] -> kiosk_empty
+ {not entrance_secured} [Try to lock the main entrance] -> door
+ {not stairs_bark_seen} [Inspect the blocked atrium stairs] -> foyer_stairs
+ [Explore the main floor] -> main_floor
+ [Descend toward Research & Archives] -> basement_entry

=== kiosk ===
The entrance key hangs behind the information kiosk. Taking it will not secure the door by itself.
* [Take the key]
    ~ key_obtained = true
    -> foyer
* [Leave the key for now] -> foyer

=== kiosk_empty ===
The hook is empty; Eli has the key.
-> foyer

=== door ===
{ key_obtained:
    -> lock_entrance
- else:
    -> no_key
}

=== no_key ===
The door cannot be locked without the key behind the information kiosk.
-> foyer

=== foyer_stairs ===
The main stairs to the upper glass atrium are blocked.
Eli: "Yeah, not getting up that way"
~ stairs_bark_seen = true
-> foyer

=== lock_entrance ===
// WPL_EVENT02_DOOR: only using the key to lock the door sets this state.
~ entrance_secured = true
Eli turns the recovered key. The main entrance is secured against further infected.
{ radio_call_complete:
    -> foyer
- else:
    -> rival_select
}

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
-> after_radio

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
-> after_radio

=== after_radio ===
// WPL_03_COMPETING_CLAIM ends without changing ownership.
The competing radio contact ends. Nobody has received the key.
-> foyer

=== main_floor ===
The public floor has library stacks, reading rooms, offices and civic reference areas. The upper glass atrium is visible above the blocked stairway.
+ {not main_floor_cleared} [Clear the remaining infected on the main floor] -> clear_main_floor
+ {not waldo_seen} [Enter the children's corner] -> waldo
+ {not medicine_seen} [Examine Medicine & Health] -> medicine
+ {not archives_sign_seen} [Follow the Research & Archives signs] -> archives_sign
+ {not community_seen} [Inspect the community meeting rooms] -> community
+ [Go back to the main entrance] -> foyer
+ [Descend to Research & Archives] -> basement_entry

=== clear_main_floor ===
// Abstracted encounter. WPL_MAIN_FLOOR_CLEARED is earned by clearing infected, not collecting evidence.
~ main_floor_cleared = true
{ not waldo_seen:
    Eli stops a red-and-white striped infected by the children's shelves.
    Eli: "There's Waldo"
    ~ waldo_seen = true
}
The last infected falls. The main public floor is clear.
-> main_floor

=== waldo ===
// WPL_EVENT04_WALDO: the bark fires only after killing the distinctive infected.
The children's corner contains one infected wearing a red-and-white striped sweater.
* [Deal with the infected]
    ~ waldo_seen = true
    Eli: "There's Waldo"
    -> main_floor
* [Withdraw for now] -> main_floor

=== medicine ===
Medicine & Health shelves still hold practical medical reference books.
~ medicine_seen = true
Eli: "That could be handy."
-> main_floor

=== archives_sign ===
An old wayfinding board points down to Research & Archives.
~ archives_sign_seen = true
Eli: "Archives and infected, lower level please!"
-> main_floor

=== community ===
Meeting rooms and multipurpose spaces fill the end of the floor.
~ community_seen = true
Eli: "This is bigger than I thought!"
-> main_floor

=== basement_entry ===
Eli descends into the darker archive level and the library's mechanical spaces.
{ not entrance_secured:
    Initial claimant (radio): "Eli. The front door. Lock the damn door."
}
-> basement

=== basement ===
Records, practical reference books, heating equipment and the generator survive below the public floors.
+ {not basement_cleared} [Clear the remaining infected in the basement] -> clear_basement
+ {not generator_seen} [Inspect the backup generator and boiler] -> generator
+ {not municipal_archive_seen} [Examine the municipal records and technical shelves] -> records
+ {not elevator_seen} [Investigate the open elevator service shaft] -> elevator
+ [Return upstairs to the main floor] -> main_floor
+ [Climb the service shaft toward the cafeteria kitchen] -> kitchen_entry

=== clear_basement ===
// Abstracted encounter. Clearance is not contingent on looking at every document or machine.
~ basement_cleared = true
After a final sweep, no infected remain in the basement.
-> basement

=== generator ===
The basement contains a robust backup generator and a boiler serving the building.
~ generator_seen = true
Eli: "Ah. There you are."
-> basement

=== records ===
Municipal building plans, utility records and technical reference material are preserved in the archive.
~ municipal_archive_seen = true
Eli: "Well... somebody kept everything."
-> basement

=== elevator ===
Repeated scrapes inside the open shaft suggest something has been travelling through it.
~ elevator_seen = true
Eli: "Something's been using this... a lot"
-> basement

=== kitchen_entry ===
Eli climbs out of the elevator shaft into an institutional cafeteria kitchen.
{ not kitchen_bark_seen:
    Eli: "They have a cafeteria here!"
    ~ kitchen_bark_seen = true
}
-> kitchen

=== kitchen ===
The commercial kitchen is enclosed and hostile. The double doors to the atrium are blocked.
+ {not boss_defeated} [Confront the infected occupying the kitchen] -> kitchen_boss
+ {boss_defeated && not atrium_door_unlocked} [Inspect and clear the atrium door deadbolt] -> atrium_lock
+ {atrium_door_unlocked} [Open the atrium doors and cross into the glass atrium] -> enter_atrium
+ [Retreat through the service shaft to the basement] -> basement

=== kitchen_boss ===
// Abstracted mandatory boss encounter. Gameplay enemy design remains outside narrative scope.
After a hard fight, the infected occupying the cafeteria kitchen is defeated.
~ boss_defeated = true
The atrium doors can now be inspected, but they remain physically locked.
-> kitchen

=== atrium_lock ===
// WPL_E06_ATRIUM_DOOR_LOCK: boss death only permits this second, separate action.
~ atrium_door_unlocked = true
Eli clears the obstruction and releases the deadbolt. The double doors can now be opened.
-> kitchen

=== enter_atrium ===
// Physical crossing, not boss death or unlocking, is the qualification opportunity.
~ inside_atrium = true
{ entrance_secured && radio_call_complete:
    ~ atrium_reached = true
}
The glass atrium opens above Eli: sunlight by day, city lights and stars by night. The old cafeteria offers room for shelter, training, cultivation or communal use.
-> atrium

=== atrium ===
// WPL_ATRIUM_RADIO_CALLS requires qualified entry and actual presence here.
{ not atrium_intro_seen:
    The quiet is a contrast to the kitchen. This space could become several very different things.
    ~ atrium_intro_seen = true
}
+ {atrium_reached && entrance_secured && radio_call_complete && not pk_question_1} [Question the Peacekeepers about their plan (1/3)] -> pk_q1_route
+ {atrium_reached && entrance_secured && radio_call_complete && not pk_question_2} [Question the Peacekeepers about their plan (2/3)] -> pk_q2_route
+ {atrium_reached && entrance_secured && radio_call_complete && not pk_question_3} [Question the Peacekeepers about their plan (3/3)] -> pk_q3_route
+ {atrium_reached && entrance_secured && radio_call_complete && not bastion_question_1} [Question Bastion about their plan (1/3)] -> bas_q1_route
+ {atrium_reached && entrance_secured && radio_call_complete && not bastion_question_2} [Question Bastion about their plan (2/3)] -> bas_q2_route
+ {atrium_reached && entrance_secured && radio_call_complete && not bastion_question_3} [Question Bastion about their plan (3/3)] -> bas_q3_route
+ [Return to the cafeteria kitchen] -> leave_atrium_to_kitchen
+ [Leave Wards Point through the far atrium exit] -> departure

=== leave_atrium_to_kitchen ===
~ inside_atrium = false
-> kitchen

=== pk_q1_route ===
{ initial_claimant == "PK":
    -> pk_i_q1
- else:
    -> pk_c_q1
}
=== pk_q2_route ===
{ initial_claimant == "PK":
    -> pk_i_q2
- else:
    -> pk_c_q2
}
=== pk_q3_route ===
{ initial_claimant == "PK":
    -> pk_i_q3
- else:
    -> pk_c_q3
}
=== bas_q1_route ===
{ initial_claimant == "BASTION":
    -> bas_i_q1
- else:
    -> bas_c_q1
}
=== bas_q2_route ===
{ initial_claimant == "BASTION":
    -> bas_i_q2
- else:
    -> bas_c_q2
}
=== bas_q3_route ===
{ initial_claimant == "BASTION":
    -> bas_i_q3
- else:
    -> bas_c_q3
}

=== pk_i_q1 ===
// Source-authored exchange: WPL_06_ATRIUM, PeaceKeeper Initial Claimant, Question 1.
Eli: "You said this place was for the city. I found the archives downstairs. Building plans, utilities, technical manuals... a lot of useful shit."
Eli: "Who gets access to that?"
Peacekeeper representative: "Not everyone, immediately."
Eli: "That's what I thought."
Peacekeeper representative: "Because some of it matters too much to lose, Eli. We catalogue it, protect it, and put people who know what they're looking at in charge of it."
Peacekeeper representative: "That doesn't mean nobody else gets it. It means we don't let the first person who needs kindling burn the electrical plans for half the city."
~ pk_question_1 = true
-> atrium

=== pk_i_q2 ===
// Source-authored exchange: WPL_06_ATRIUM, PeaceKeeper Initial Claimant, Question 2.
Eli: "You talked about the people who can't look past their next meal. Elderly, injured, people who can't fight."
Eli: "So where do they fit in here?"
Peacekeeper representative: "Here, if we can make it work."
Eli: "In the library?"
Peacekeeper representative: "Some of them. Medical space, temporary shelter, training for the people who can still work. Maybe more once we know what the building can support."
Peacekeeper representative: "But somebody has to organize it. Beds, food, medicine, power... none of that appears because everyone agrees it would be nice."
~ pk_question_2 = true
-> atrium

=== pk_i_q3 ===
// Source-authored exchange: WPL_06_ATRIUM, PeaceKeeper Initial Claimant, Question 3.
Eli: "You keep saying organization. Process. Local control."
Eli: "How long before that turns into the same shit we already had?"
Peacekeeper representative: "I don't know."
Eli: "That's reassuring."
Peacekeeper representative: "I'm serious. I can't promise nobody will ever abuse it."
Peacekeeper representative: "What I can promise is that doing nothing doesn't protect anyone either. Somebody has to keep the generator running. Somebody has to decide where the medicine goes. Somebody has to make sure those records are still there next year."
Peacekeeper representative: "You don't have to trust the word 'authority.' I don't much either anymore."
Peacekeeper representative: "But the work still has to get done."
~ pk_question_3 = true
-> atrium

=== pk_c_q1 ===
// Source-authored exchange: WPL_06_ATRIUM, PeaceKeeper Counter-Claimant, Question 1.
Eli: "You said people need process."
Eli: "I'm standing in a building full of things people need. So what does 'process' actually mean here?"
Peacekeeper radio contact: "It means we don't start stripping the place for whatever solves today's problem."
Peacekeeper radio contact: "We inventory what's here. Power. Heat. Records. Technical material. Space."
Peacekeeper radio contact: "Then we decide what can be used now and what has to survive long enough to matter later."
Eli: "And who decides that?"
Peacekeeper radio contact: "People responsible for making sure there is still something left to decide about tomorrow."
~ pk_question_1 = true
-> atrium

=== pk_c_q2 ===
// Source-authored exchange: WPL_06_ATRIUM, PeaceKeeper Counter-Claimant, Question 2.
Eli: "I found the records downstairs."
Eli: "Plans for buildings. Utilities. Repairs. Half the city might be sitting in those cabinets."
Eli: "What would you do with them?"
Peacekeeper radio contact: "Protect them first."
Eli: "Meaning lock them up."
Peacekeeper radio contact: "Meaning don't lose them."
Peacekeeper radio contact: "Then get them into the hands of people who can actually use them. Engineers. Repair crews. Anyone we're training to keep systems running."
Peacekeeper radio contact: "We lose that archive and we don't get another one."
~ pk_question_2 = true
-> atrium

=== pk_c_q3 ===
// Source-authored exchange: WPL_06_ATRIUM, PeaceKeeper Counter-Claimant, Question 3.
Eli: "You also told me planning wasn't the problem. People were."
Eli: "That's convenient."
Peacekeeper radio contact: "It's also true."
Eli: "GRE had experts. Governments had plans. The military had command structures."
Eli: "Everybody had somebody responsible."
Eli: "And here we are."
Peacekeeper radio contact: "Yeah. Here we are."
Peacekeeper radio contact: "So tell me what the alternative is."
Peacekeeper radio contact: "Nobody keeps track of the medicine? Nobody maintains the generator? Nobody protects those plans because deciding who gets access feels too much like authority?"
Peacekeeper radio contact: "We can fuck this up, Eli. I'm not pretending we can't."
Peacekeeper radio contact: "But abandoning the work because somebody abused it before guarantees we fuck it up."
~ pk_question_3 = true
-> atrium

=== bas_i_q1 ===
// Source-authored exchange: WPL_06_ATRIUM, Bastion Initial Claimant, Question 1.
Eli: "You said what you have, everyone gets to see. What you decide, you decide together."
Eli: "How does that work with this place?"
Bastion representative: "Same way, brother. People using the place get a voice in what happens to it."
Eli: "Everybody?"
Bastion representative: "Everybody affected by it gets heard. Doesn't mean every dumb idea wins."
Bastion representative: "But nobody gets to sit in an office somewhere and tell the people living here what they need."
Eli: "So meetings."
Bastion representative: "Yeah, man. Horrible fucking meetings."
~ bastion_question_1 = true
-> atrium

=== bas_i_q2 ===
// Source-authored exchange: WPL_06_ATRIUM, Bastion Initial Claimant, Question 2.
Eli: "I found the archive downstairs. Building plans, utilities, repair manuals... things people might need years from now."
Eli: "What happens to that?"
Bastion representative: "We use it."
Eli: "That's not what I asked."
Bastion representative: "I know."
Bastion representative: "We don't lock it away. Somebody needs a plan, a manual, whatever, they use it."
Eli: "And who makes sure it survives?"
Bastion representative: "We do."
Bastion representative: "But I'm not going to bullshit you, brother. If it's between keeping somebody warm this winter and protecting a room full of paper, the person comes first."
~ bastion_question_2 = true
-> atrium

=== bas_i_q3 ===
// Source-authored exchange: WPL_06_ATRIUM, Bastion Initial Claimant, Question 3.
Eli: "This is the part I'm wondering about."
Eli: "You've got food, families, shelter, people needing things right now. What stops everything useful downstairs from getting stripped apart one emergency at a time?"
Bastion representative: "Nothing magical."
Bastion representative: "We remind each other there is a tomorrow."
Eli: "That's it?"
Bastion representative: "That's a lot, man."
Bastion representative: "Look, maybe we lose things. Maybe somebody makes a bad call. But I'd rather have the people living with that decision make it than somebody protecting a blueprint while the family upstairs freezes."
Bastion representative: "We're trying to save people, Eli. The rest matters because it helps us do that."
~ bastion_question_3 = true
-> atrium

=== bas_c_q1 ===
// Source-authored exchange: WPL_06_ATRIUM, Bastion Counter Claimant, Question 1.
Eli: "You said this place should belong to the people using it."
Eli: "What does that actually mean?"
Bastion radio contact: "Means exactly that, brother."
Bastion radio contact: "Families living here get a say. People growing food get a say. People fixing shit get a say."
Eli: "And nobody's in charge?"
Bastion radio contact: "People can be responsible without owning everybody underneath them."
Bastion radio contact: "You need somebody running the kitchen, run the kitchen. Doesn't mean they get to decide who deserves to eat."
~ bastion_question_1 = true
-> atrium

=== bas_c_q2 ===
// Source-authored exchange: WPL_06_ATRIUM, Bastion Counter Claimant, Question 2.
Eli: "There's more downstairs than I expected."
Eli: "Generator. Boiler. City plans. Technical manuals."
Eli: "Some of that could matter to people nowhere near this building."
Bastion radio contact: "Then let them use it."
Eli: "Just like that?"
Bastion radio contact: "Why not?"
Bastion radio contact: "Copy it. Teach it. Bring somebody in who knows what they're looking at."
Bastion radio contact: "What I don't want is somebody deciding those plans are too important for ordinary people to touch."
Eli: "And if something gets damaged?"
Bastion radio contact: "Then we learn not to do it again."
Bastion radio contact: "Knowledge isn't safer because one guy has the key."
~ bastion_question_2 = true
-> atrium

=== bas_c_q3 ===
// Source-authored exchange: WPL_06_ATRIUM, Bastion Counter Claimant, Question 3.
Eli: "And when what people need today clashes with what somebody might need five years from now?"
Bastion radio contact: "Then it gets hard."
Eli: "That's your answer?"
Bastion radio contact: "Yeah."
Bastion radio contact: "Anybody telling you there's an easy answer is selling you something."
Bastion radio contact: "People starving today matter. So does tomorrow. You argue it out. You find another way if you can."
Bastion radio contact: "But we don't sacrifice people standing in front of us because somebody with a clipboard says the future needs it more."
Eli: "And if that costs you something you can't replace?"
Bastion radio contact: "Then at least the people who paid that price were part of deciding it."
~ bastion_question_3 = true
-> atrium

=== departure ===
// WPL_EVENT06_DEPARTURE: leaving through this exit locks it behind Eli.
~ inside_atrium = false
~ departed = true
The far atrium exit closes and locks behind Eli. He cannot re-enter through it.
{ not entrance_secured:
    ~ main_floor_cleared = false
    ~ basement_cleared = false
}
{ main_floor_cleared && basement_cleared && boss_defeated && entrance_secured && atrium_reached:
    ~ secured = true
    -> secured_exit
- else:
    ~ secured = false
    -> early_exit
}

=== secured_exit ===
The library is secured. Eli still has the key, and no faction owns Wards Point yet.
Reporting to a claimant and handing over the key will resolve ownership in the next release.
* [Finish this exploration demo] -> END

=== early_exit ===
// WPL_EVENT06_EARLY_EXIT; the permanent boss/atrium progression remains recorded.
Wards Point is not yet secured. An incomplete mission cannot be handed over.
If the entrance was left unlocked, the main floor and basement must be cleared again. The kitchen boss remains defeated.
* [Return through the main public entrance to finish the job] -> recover_entry
* [Finish this exploration demo without securing the building] -> END

=== recover_entry ===
// The far-end atrium exit stays locked; recovery uses the original front-door route.
~ recovery_visits = recovery_visits + 1
~ departed = false
Eli returns to the original public entrance. The atrium exit remains locked behind him.
-> foyer
