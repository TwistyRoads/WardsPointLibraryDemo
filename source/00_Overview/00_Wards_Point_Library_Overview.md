# Wards Point Library — Overview

## Project

**Project:**  Original Dying Light 2-style side-mission design exercise
**Location:** Wards Point, Elyseum  
**Conflict:** Peacekeepers vs. Bastion  
**Protagonist:** Eli  
**Status:** Complete.

## Core Mission Proposition

Wards Point Library is contested by the Peacekeepers and Bastion. 
[[03_Factions_and_Characters]]

Neither faction can simply commit enough personnel to occupy and clear the library without exposing itself elsewhere or provoking escalation. Eli is useful as an independent actor who can investigate and secure the site without either faction openly committing its force.

Both factions effectively make the same offer:

- investigate / clear Wards Point;
- secure the main entrance behind Eli;
- confirm when the library is secure;
- report back;
- once confirmation is received, that faction will move in.

After [[WPL_SECURED]] becomes true, Eli returns to either faction. The first successful report includes handing over [[WPL_E01_KEY]] and awards ownership. Reporting to the second faction afterwards produces its negative response and reputation damage.

The optional atrium calls are informational and do not commit ownership. The decision is enacted through the return and key handover in [[WPL_07_DEBRIEF]].

## Project Constraints

- Location: Wards Point, Elyseum.
- Peacekeepers vs. Bastion Bandits.
- Eli determines which claimant receives the location.
- Peacekeeper ideology: authoritarian / fascist.
- Bastion ideology: anarchist.
- Both outcomes must create benefits and consequences.

## World-State Dependencies

The mission is written with the following assumptions and dependencies:
[[Design_Doctrine]]
[[07_Open_Questions]]

- exact date: September–October 2024, before Black Monday on January 6, 2025. By then Villedor is already under severe martial control, social breakdown is advanced, refugees have flooded toward the city, and General Pratt's authority is deteriorating.
- what “Peacekeepers” means at this point: Jack Matt-aligned military/security personnel evolving toward the later PK ideology: discipline, order, armed control, training, checkpoint logic, institutional continuity. They should feel recognizably PK without pretending the mature 2036 organization already exists.
- what Bastion already controls: a local anarchist survival community with enough territorial presence to watch Wards Point and plausibly contest it, but not enough force to seize it without exposing themselves elsewhere.
- state of Elyseum: urban collapse in progress, not post-apocalyptic equilibrium. Civic systems still exist in fragments, but authority is increasingly military, local, improvised, and contested.
- remaining governmental / civic authority: nominally still present but badly degraded. In 2024 Villedor is under martial-law conditions, news suppression, arrests, service collapse, and military control; by June telephone service has been suspended and the VNC transmitter shut down.
- night threat: already severe. Infected are a systemic day/night hazard, with dark interiors functioning as daytime shelter and streets becoming more dangerous at night.
- food scarcity: significant and worsening. Not yet the settled agrarian scarcity of 2036, but enough that hunting territory, cultivation space, medicine, preserved food, and secure stores are strategic assets.
- population pressure: extreme. By mid-2024 large refugee movements are pressing toward Villedor, while the city is already experiencing martial control, outbreaks, riots and selective admission of “useful” migrants.
- current infected conditions: established THV outbreak with containment failing, but **pre-Black Monday chemistry**. That means we should not use the yellow-dust environmental devastation or post-bombing mutation landscape as background yet. Black Monday is still in the future.

These facts materially affect faction motives, claims to legitimacy, available infrastructure, and what Eli can plausibly know.

## Why the Library Matters
[[02_Location_Narrative_Design]]
[[05_Environmental_Narrative]]

Wards Point has value beyond simply being a large defensible building:

- defensibility;
- sleeping capacity;
- surrounding grounds;
- hunting access;
- books, records, maps and skills;
- municipal / technical archives;
- symbolic control of knowledge;
- potential civic and community infrastructure;
- potential food-production space.

## Mission Grammar

See the root-level [[Design_Doctrine]].

The working mission rhythm is:

**Briefs establish intent.**  
**The library establishes evidence.**  
**Consultation interrogates claims.**  
**The first successful report and key handover award ownership.**  
**Debriefs establish consequence.**  
**Later world-state changes demonstrate outcome.**

## Structural Principle

The current authored mission beats and their linked state, Event and Evidence definitions govern the design. Summaries must agree with them.

The route is Main Floor → Basement / Archive → Elevator / Service Shaft → Cafeteria Kitchen → Atrium → Exterior Exit. Main-floor and basement clearance, persistent boss defeat, entrance security and qualified atrium progression determine [[WPL_SECURED]]. [[WPL_EVENT06_DEPARTURE]] and [[WPL_EVENT06_EARLY_EXIT]] govern incomplete departure and recovery.

[[01_Quest_Flow]] provides the reading sequence; [[04_State_and_Consequence]] maps the state responsibilities; [[06_Dialogue_Working]] indexes the authored dialogue. [[07_Open_Questions]] separates genuine production dependencies from completed mission design. Preserve Obsidian modularity and leave encounter balance, rewards and campaign character integration to their defined production boundaries.
