# WPL_EVENT06_DEPARTURE

Fire when Eli leaves Wards Point Library during the mission, including departure through the far-end atrium exit. That exit closes and locks behind him and is unavailable for re-entry for the remainder of the mission.

## Event Consequences

- End atrium consultation availability for this visit; calls require Eli to be inside the atrium as specified in [[WPL_06_ATRIUM]].
- If [[WPL_MAIN_ENTRANCE_SECURED]] = false, set [[WPL_MAIN_FLOOR_CLEARED]], [[WPL_BASEMENT_CLEARED]] and [[WPL_SECURED]] to false.
- Preserve [[WPL_BOSS_DEFEATED]] and permanent discovery/progression states.
- Evaluate [[WPL_SECURED]] against all five prerequisites in its descriptor.
- If security is incomplete, invoke [[WPL_EVENT06_EARLY_EXIT]] and disable successful handover eligibility.
- If security is complete and ownership unresolved, both [[WPL_PK_ELIGIBLE]] and [[WPL_BAS_ELIGIBLE]] permit the later return/report and key handover.

Departure itself does not transfer the key, award ownership or complete the debrief. The early-exit Event does not call this Event again.
