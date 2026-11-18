If there are relationship trackers to describe [Eli's] relationship with the factions we derive who gets to do the initial brief in a manner such as this;

if [[PK_Faction|PK_RELATIONSHIP]] >= [[Bastion_Faction|BAS_RELATIONSHIP]]
    WPL_INITIAL_CLAIMANT = PK
else
    WPL_INITIAL_CLAIMANT = BASTION

If there is no relationship to factions tracked as a variable in the game that can be compared

WPL_INITIAL_CLAIMANT = PK
