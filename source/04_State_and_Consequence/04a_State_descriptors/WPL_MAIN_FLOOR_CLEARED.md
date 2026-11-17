# WPL_MAIN_FLOOR_CLEARED

Boolean, initialized as false.

Set true when the infected count on the main floor reaches zero, as required by [[WPL_04_MAIN_FLOOR]]. Eli may initially avoid infected, but this clearance is required by [[WPL_SECURED]].

[[WPL_EVENT06_DEPARTURE]] sets this state false if Eli leaves while [[WPL_MAIN_ENTRANCE_SECURED]] is false. Re-establish clearance against the current infected count on return. This invalidation does not reset [[WPL_BOSS_DEFEATED]].
