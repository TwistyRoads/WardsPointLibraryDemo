Fire immediately after successful completion of the appropriate losing-faction narrative sequence in [[WPL_07_DEBRIEF]].

The Event receives the losing faction from Gameplay / narrative routing.

## Event Reads

[[WPL_OWNERSHIP]]
[[WPL_INITIAL_CLAIMANT]]
[[WPL_LOSING_CONSEQUENCE]]

## Preconditions

Proceed only if:

- [[WPL_OWNERSHIP]] is already resolved;
- the passed faction is not the current owner;
- the appropriate losing-faction response remains unresolved.

If these conditions are not satisfied, do not apply the consequence again.

## Event Consequences

### Losing Response

Resolve [[WPL_LOSING_CONSEQUENCE]] for the losing faction.

Mark the corresponding losing response as consumed.

The losing-faction narrative must not become available again after this Event completes.

### Relationship / Reputation Consequence

Apply the configured relationship / reputation consequence to the losing faction.

The exact numeric value or campaign-scale reputation implementation remains an external system dependency.

Apply this consequence once only.

### Ownership Protection

Do not alter [[WPL_OWNERSHIP]].

The losing response acknowledges an ownership decision that has already been committed and cannot transfer Wards Point to another faction.

### Historical State

Preserve the state required by downstream systems to determine:

- which faction owns Wards Point;
- which faction lost the claim;
- whether the losing faction was the initial claimant or counter-claimant;
- that the losing response has already been consumed.

Mission-only states no longer required by unresolved narrative or downstream consumers may be marked removable pending approval.

## Event Boundary

This Event does not:

- reopen the ownership decision;
- transfer or restore [[WPL_E01_KEY]];
- replay a winner sequence;
- alter [[WPL_SECURED]];
- modify [[WPL_ENDURING_WORLD_STATE]];
- create a second relationship / reputation consequence.
