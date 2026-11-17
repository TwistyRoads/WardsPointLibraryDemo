When the required boss infected in the cafeteria kitchen is defeated, this event fires and changes the state of the double doors leading into the atrium.

The doors remain a physical barrier until the boss is dead. Once this event fires, the player can inspect the doors and interact with whatever lock, barricade or obstruction prevents access to the atrium.

**Event consequences:**

- Set [[WPL_BOSS_DEFEATED]] = "true"
- enable inspection / interaction on the atrium access doors ;
- allow the player to remove the barricade or unlock the doors through gameplay [[WPL_E06_ATRIUM_DOOR_LOCK]];
- permit access to the atrium once the door interaction is completed;
- do not set [[WPL_ATRIUM_REACHED]] until the player actually enters the atrium.
