Fire immediately after completion of a successful winner narrative sequence in [[WPL_07_DEBRIEF]].

The Event receives the winning faction from Gameplay.

## Event Reads

[[WPL_SECURED]]
[[WPL_OWNERSHIP]]
[[WPL_REPORT_COMPLETE]]
[[WPL_INITIAL_CLAIMANT]]
[[WPL_PK_ELIGIBLE]]
[[WPL_BAS_ELIGIBLE]]
[[WPL_LOSING_CONSEQUENCE]]
[[WPL_ENDURING_WORLD_STATE]]

## Preconditions

Proceed only if:

- [[WPL_SECURED]] = true;
- [[WPL_OWNERSHIP]] is unresolved;
- [[WPL_REPORT_COMPLETE]] is not complete;
- the passed faction is a valid claimant for the successful report.

If these conditions are not satisfied, do not commit a second ownership resolution.

## Event Consequences

### Ownership

Set [[WPL_OWNERSHIP]] to the winning faction passed to this Event.

Ownership is now locked and may not be changed by later reporting.

### Report Completion

Set [[WPL_REPORT_COMPLETE]] to complete.

The first successful report / key handover has now been consumed.

### Claimant Eligibility

Disable both first-report claimant eligibility states:

- [[WPL_PK_ELIGIBLE]] = false;
- [[WPL_BAS_ELIGIBLE]] = false.

Neither faction may receive another successful first report.

### Key Handover

Resolve [[WPL_E01_KEY]] as transferred to the winning faction.

The key is no longer available as a mission handover object.

### Losing-Faction Response

Make the appropriate losing-faction narrative available.

The losing response remains unresolved until Eli later reports to / interacts with the losing faction and the corresponding loss sequence in [[WPL_07_DEBRIEF]] is fired.

Use [[WPL_INITIAL_CLAIMANT]] and [[WPL_OWNERSHIP]] to preserve whether the losing faction was:

- the initial claimant; or
- the counter-claimant.

Do not apply the losing-faction relationship / reputation consequence in this Event.

### Enduring Consequence Availability

Make the owner-specific downstream consequence path available through [[WPL_ENDURING_WORLD_STATE]].

This Event establishes availability only.

Exact later occupation, transformation, reputation, and world-state implementation remain with downstream consequence logic.

## Mission-State Reconciliation

After ownership has been committed, identify Wards Point mission-only states that are no longer required by:

- the pending losing-faction response;
- downstream world-state consequences;
- recovery;
- debugging;
- analytics;
- or other approved consumers.

These states may be marked **removable pending approval**.

Do not automatically reset or remove persistent historical facts required by unresolved narrative or later world-state consumers.

In particular, preserve any state required to determine:

- who originally briefed Eli;
- who received Wards Point;
- which losing-faction narrative remains pending;
- whether later consequences should follow the PK or Bastion ownership path.

## Event Boundary

This Event does not:

- play the losing-faction dialogue;
- apply the losing-faction relationship / reputation consequence;
- rewrite [[WPL_SECURED]];
- replay winner dialogue;
- determine later environmental transformations directly.

Those responsibilities belong to the pending losing-faction resolution and downstream consequence systems.
