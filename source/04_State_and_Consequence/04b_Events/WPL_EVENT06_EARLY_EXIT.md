# WPL_EVENT06_EARLY_EXIT

Invoked by [[WPL_EVENT06_DEPARTURE]] when Eli leaves before [[WPL_SECURED]] is satisfied. Any missing prerequisite from the security descriptor prevents success: main-floor clearance, basement clearance, boss defeat, secured main entrance or qualified atrium progression.

## Event Consequences

- [[WPL_SECURED]] is false; disable [[WPL_PK_ELIGIBLE]] and [[WPL_BAS_ELIGIBLE]] for successful report/key handover.
- Atrium consultations are unavailable outside the atrium. On return, their normal state and location prerequisites apply; do not treat an earlier eligible visit as permission to call from anywhere.
- If the front entrance was unsecured on departure, the departure Event has invalidated both non-boss clearance states. Normal infected may repopulate the affected interior under Gameplay rules, and clearance must be re-established.
- If a floor was never cleared, retain its outstanding objective. A secured entrance does not itself clear surviving infected, and an unfinished floor does not automatically invalidate the other cleared floor.
- Preserve [[WPL_BOSS_DEFEATED]] and permanent discovery/progression states. Do not respawn the boss merely to repeat the original route.
- Direct Eli back to outstanding security objectives. Recovering the key and locking the entrance alone do not restore invalidated clearance.

Recovery requires a viable return route; the locked atrium exit is not available for re-entry. Exact access and repopulation implementation remain with Level Design / Gameplay. Re-evaluate security after the outstanding conditions are satisfied. Do not invoke the departure Event again from this Event.
