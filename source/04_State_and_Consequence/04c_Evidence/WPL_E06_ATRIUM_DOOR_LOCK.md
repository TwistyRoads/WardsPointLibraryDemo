A physical lock / barricade securing the double doors between the cafeteria kitchen and the atrium.

The object is present when the player enters the kitchen but cannot be cleared until [[WPL_BOSS_DEFEATED]] = true.

Once [[WPL_BOSS_DEFEATED]] = true, the lock / barricade becomes inspectable and interactable.

**Interaction:**

- player inspects the obstruction;
- player performs the required gameplay interaction to clear it;
- once cleared, the double doors can be opened;
- the evidence object is considered resolved / cleared.

**Resolved state:**

- atrium access doors become openable;
- player may proceed into the atrium;
- [[WPL_ATRIUM_REACHED]] is not set until the player actually crosses into the atrium.
