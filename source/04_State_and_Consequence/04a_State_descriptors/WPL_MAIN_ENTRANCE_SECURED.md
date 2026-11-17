# WPL_MAIN_ENTRANCE_SECURED

Boolean, initialized as false. Records that the front entrance has been locked against incoming infected; possession of [[WPL_E01_KEY]] alone is insufficient.

[[WPL_EVENT02_DOOR]] sets this state to true when Eli locks the entrance and starts the rival introduction in [[WPL_03_COMPETING_CLAIM]].

This is a prerequisite for qualified [[WPL_ATRIUM_REACHED]], [[WPL_ATRIUM_RADIO_CALLS]] and [[WPL_SECURED]]. It does not by itself establish building clearance.

If Eli leaves while this state is false, [[WPL_EVENT06_DEPARTURE]] invalidates [[WPL_MAIN_FLOOR_CLEARED]] and [[WPL_BASEMENT_CLEARED]] and sets [[WPL_SECURED]] false. [[WPL_BOSS_DEFEATED]] remains unchanged. Recovery follows [[WPL_EVENT06_EARLY_EXIT]].
