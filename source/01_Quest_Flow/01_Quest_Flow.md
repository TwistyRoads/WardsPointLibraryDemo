# Wards Point Library — Quest Flow

## 0. Activation and Initial Claimant

Campaign eligibility is supplied by the wider game; see [[WPL_01_HOOK]] and [[Ward_Point_Library]]. The working chronology and faction context are defined in [[00_Wards_Point_Library_Overview]] and [[03_Factions_and_Characters]].

[[WPL_INITIAL_CLAIMANT]] selects the opening faction from the relationship comparison at activation. PK wins ties and is the fallback when no comparison exists. The other faction supplies the competing claim. This selection identifies briefing history; it does not award ownership.

## 1. Opening Brief — [[WPL_01_HOOK]]

The initial claimant makes its full case and asks Eli to enter Wards Point, secure the front entrance, clear the building, and return. Eli is useful because he can act independently without the faction committing a force or exposing its other resources.

The scene sets [[WPL_BRIEF_COMPLETE]]. The library objective becomes active and entry becomes available. Exact campaign prerequisites, reward economy and casting remain production dependencies in [[07_Open_Questions]].

## 2. Arrival — [[WPL_02_ARRIVAL]]

Eli enters through the main public doors. The first read establishes the library's scale, the upper atrium and its blocked main stairs. [[WPL_Entered]] records entry.

[[WPL_E01_KEY]] hangs behind the information kiosk. Using it to lock the front entrance fires [[WPL_EVENT02_DOOR]], sets [[WPL_MAIN_ENTRANCE_SECURED]] and starts the rival radio contact. Key possession alone does not establish that the entrance is locked.

Arrival encounters vary with time of day and infected shelter behaviour. A flashlight is available before the basement if Eli does not already possess one.

## 3. Competing Claim — [[WPL_03_COMPETING_CLAIM]]

The faction that did not brief Eli contacts him after the entrance-lock event. Its compressed counter-case challenges the first framing; it does not reproduce the full opening brief.

Movement and defensive actions remain available during the call. Completion sets [[WPL_RADIO_CALL_COMPLETE]]. This is the rival introduction, not an ownership decision or the later optional consultation.

If Eli proceeds without locking the front entrance, this introduction may remain incomplete. The initial claimant's reminder in [[WPL_05_BASEMENT]] directs him back to the outstanding task. Reminders may recur at meaningful progression boundaries while the entrance remains unsecured; they are distinct from the rival introduction.

## 4. Main Floor — [[WPL_04_MAIN_FLOOR]]

Player-led exploration and contextual barks establish public, educational and communal value. Office/civic areas belong to this main-floor exploration. Signage directs Eli toward Research & Archives below.

Eli may initially avoid infected, but [[WPL_MAIN_FLOOR_CLEARED]] becomes true only when the main-floor infected count reaches zero. Layout and encounter placement expose the relevant environmental features without imposing a collectible-evidence checklist.

## 5. Basement — [[WPL_05_BASEMENT]]

The archive, technical references, generator and boiler establish knowledge and infrastructure useful beyond immediate shelter. Layout and infected placement give Eli the opportunity to see the authored Evidence.

[[WPL_BASEMENT_CLEARED]] becomes true when the basement infected count reaches zero. An unsecured front entrance prompts the initial claimant's reminder on basement entry.

The elevator/service shaft is encountered late in the route. Signs of repeated movement foreshadow the threat above. The shaft exits into the cafeteria kitchen.

## 6. Kitchen and Atrium — [[WPL_06_ATRIUM]]

The kitchen contains a mandatory level-appropriate boss. Its defeat fires [[WPL_EVENT06_BOSS_DEFEATED]] and records [[WPL_BOSS_DEFEATED]]. It enables interaction with [[WPL_E06_ATRIUM_DOOR_LOCK]]; it does not open the doors.

Eli clears/unlocks the obstruction through gameplay, opens the doors and crosses into the atrium. That crossing is the opportunity to evaluate [[WPL_ATRIUM_REACHED]]. Its descriptor requires the rival introduction to be complete and the main entrance to be secured before the progression state can become true.

The atrium supplies a quiet contrast to the kitchen and reveals adaptable cafeteria/community space, including potential for future cultivation.

## 7. Optional Consultation

Inside the atrium, [[WPL_ATRIUM_RADIO_CALLS]] governs availability of calls to either faction, both, or neither. Each faction has a variant for being the initial claimant and for being the counter-claimant. Eli's questions refer to the argument he actually heard.

These calls clarify intended use. They do not transfer the key or determine ownership. They remain available only while Eli is in the atrium, subject to their prerequisites, until departure.

## 8. Security and Departure

[[WPL_SECURED]] requires all five conditions in its descriptor: main floor cleared, basement cleared, boss defeated, main entrance secured, and qualified atrium progression complete. Required physical Evidence interactions remain part of progression; there is no additional evidence-collection completion gate.

The far-end atrium exit closes and locks behind Eli and cannot be used for re-entry during the remainder of the mission. [[WPL_EVENT06_DEPARTURE]] handles departure and routes incomplete security to [[WPL_EVENT06_EARLY_EXIT]].

Leaving with an unsecured front entrance invalidates both non-boss floor-clearance states. Normal infected may repopulate; boss defeat and permanent discovery/progression remain recorded. Incomplete security disables successful debrief eligibility and requires return to outstanding objectives. Recovery must retain a viable return route; its physical implementation belongs to Level Design.

## 9. Return and Key Handover — [[WPL_07_DEBRIEF]]

Once the building is secured, [[WPL_PK_ELIGIBLE]] and [[WPL_BAS_ELIGIBLE]] allow Eli to return to either faction. The first faction to which he successfully reports receives the key and ownership. Initial briefing order does not restrict that choice.

Reporting to the second faction afterwards produces the losing-faction response, including reputation damage. It is a consequence of the completed handover, not another opportunity to award the library.

[[WPL_07_DEBRIEF]] contains the completed winner and loser response sequences.
[[WPL_EVENT07_REPORT_ATTEMPT]] owns validation and narrative routing. [[WPL_EVENT07_WIN_RESOLUTION]] commits the first successful ownership outcome, while [[WPL_EVENT07_LOSS_RESOLUTION]] resolves the later losing-faction response and relationship consequence.

## 10. Later Consequences

[[04_State_and_Consequence]] and [[03_Factions_and_Characters]] establish the benefit/cost directions for each owner. Later transformations must develop the building's established resources. Their detailed environmental implementation and timing remain downstream production work; do not present potential outcomes as already implemented world-state changes.
