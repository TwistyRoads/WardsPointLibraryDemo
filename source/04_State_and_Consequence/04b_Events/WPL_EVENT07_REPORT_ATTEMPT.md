Fire when Eli attempts to report the status of Wards Point Library to either claimant.

## Event Reads

[[WPL_SECURED]]
[[WPL_OWNERSHIP]]
[[WPL_INITIAL_CLAIMANT]]
[[WPL_LOSING_CONSEQUENCE]]

The Event also identifies the faction Eli is currently reporting to.

## Event Routing

### If [[WPL_OWNERSHIP]] is already resolved

Do not evaluate [[WPL_SECURED]] as a prerequisite for post-ownership routing.

If Eli is interacting with the owning faction:
- do not replay the winner sequence;
- return to normal faction interaction.

If Eli is interacting with the losing faction and [[WPL_LOSING_CONSEQUENCE]] remains unresolved:
- route to the appropriate losing-faction sequence using [[WPL_INITIAL_CLAIMANT]] and [[WPL_OWNERSHIP]]:

  - PK + [[WPL_INITIAL_CLAIMANT]] = [PK] → [[WPL_07_DEBRIEF#^PeaceKeeper-IC-loss]]
  - PK + [[WPL_INITIAL_CLAIMANT]] = [BASTION] → [[WPL_07_DEBRIEF#^PeaceKeeper-CC-loss]]
  - BASTION + [[WPL_INITIAL_CLAIMANT]] = [BASTION] → [[WPL_07_DEBRIEF#^Bastion-IC-loss]]
  - BASTION + [[WPL_INITIAL_CLAIMANT]] = [PK] → [[WPL_07_DEBRIEF#^Bastion-CC-loss]]

If Eli is interacting with the losing faction and [[WPL_LOSING_CONSEQUENCE]] is already resolved:
- do not replay the losing-faction sequence;
- return to normal faction interaction.

### If [[WPL_OWNERSHIP]] is unresolved

Evaluate [[WPL_SECURED]].

If [[WPL_SECURED]] = false:
- do not enter a successful debrief sequence;
- route to the appropriate incomplete-job response;
- make no ownership, report-complete, key-transfer, reputation, losing-consequence, or enduring-world-state changes;
- return Eli to outstanding Wards Point objectives.

If [[WPL_SECURED]] = true:
- route to the appropriate successful winner sequence based on:
  - the faction Eli is currently reporting to;
  - [[WPL_INITIAL_CLAIMANT]].

  - PK + [[WPL_INITIAL_CLAIMANT]] = [PK] → [[WPL_07_DEBRIEF#^PeaceKeeper-IC-win]]
  - PK + [[WPL_INITIAL_CLAIMANT]] = [BASTION] → [[WPL_07_DEBRIEF#^PeaceKeeper-CC-win]]
  - BASTION + [[WPL_INITIAL_CLAIMANT]] = [BASTION] → [[WPL_07_DEBRIEF#^Bastion-IC-win]]
  - BASTION + [[WPL_INITIAL_CLAIMANT]] = [PK] → [[WPL_07_DEBRIEF#^Bastion-CC-win]]

## Event Boundary

This Event performs validation and narrative routing only.

It does not:

- award [[WPL_OWNERSHIP]];
- complete [[WPL_REPORT_COMPLETE]];
- transfer [[WPL_E01_KEY]];
- apply reputation changes;
- resolve [[WPL_LOSING_CONSEQUENCE]];
- set [[WPL_ENDURING_WORLD_STATE]];
- clean up mission-only state.

Those changes occur only after the routed narrative sequence reaches its appropriate resolution point.
