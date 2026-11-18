# Wards Point Library — Debrief & Ownership Implementation V0.03

*Status: implementation and route verification for the text-only portfolio adaptation. Original source authority: `source/06_Dialogue_Working/06_Dialogue_Beats/WPL_07_DEBRIEF.md` and the WPL_EVENT07 / state-descriptor files.*

## The player's decision

Eli does **not** select “Give library to PK” or “Give library to Bastion” from a synthetic faction-selection menu.

He leaves the secured building with the entrance key and chooses **whom to visit and report to**. The first successful report plays the appropriate original dialogue; **only after the completed key-handover exchange** does the winner-resolution event commit ownership.

The source makes the starting faction influential over trust and tone, not over who is eligible to receive the library.

## Winner/loser dialogue matrix

| First briefing | First *successful* report → owner | Original winner scene | Later losing contact | Original loser scene |
| --- | --- | --- | --- | --- |
| Peacekeepers | Peacekeepers | Peacekeeper Initial Claimant Win | Bastion | Bastion Counter-Claimant Loss |
| Peacekeepers | Bastion | Bastion Counter-Claimant Win | Peacekeepers | Peacekeeper Initial Claimant Loss |
| Bastion | Bastion | Bastion Initial Claimant Win | Peacekeepers | Peacekeeper Counter-Claimant Loss |
| Bastion | Peacekeepers | Peacekeeper Counter-Claimant Win | Bastion | Bastion Initial Claimant Loss |

All eight source sequences are reproduced. The original placeholders `CHARACTER_A` and `CHARACTER_B` appear in the player as appropriately faction-labelled representatives/radio contacts rather than fabricated canon names.

## State transitions

### Report attempt (validation only)

The `validate_report` knot first checks `ownership`:

- **Already resolved, same faction:** no repeated winner dialogue, handover, or mutation.
- **Already resolved, other faction, losing response pending:** deliver the original loser sequence. This **does not recheck** `secured`; cleanup of mission-only security state cannot remove the owed response.
- **Already resolved, other faction, loss already consumed:** ordinary encounter; no duplicate cost.
- **Unresolved and not secured:** incomplete response. Nothing changes in ownership, key, reporting, eligibility, consequence availability or reputation. Eli can return through the original entrance to finish.
- **Unresolved and secured:** require a valid claimant, key possession and eligibility. Route to the correct original winner sequence.

### Winner resolution (after dialogue)

`commit_win` safeguards `secured`, unresolved `ownership`, unconsumed `report_complete`, possessed entrance key and correct claimant eligibility. On success it sets:

- `ownership` = receiving faction (irreversible)
- `report_complete` = true
- `key_obtained` = false; `key_transferred` = true
- `pk_eligible` = false; `bastion_eligible` = false
- `losing_response_pending` = true
- `enduring_path_available` = true; `enduring_owner` = receiving faction

It **does not** deliver the losing dialogue or apply relationship costs.

### Losing resolution (after later dialogue)

`commit_loss` requires a committed owner, interaction with the other faction, and a still-pending losing response. It:

- consumes the owed losing response and records `losing_consequence_resolved`
- sets exactly **one** faction-specific reputation-effect marker
- does **not** alter ownership, key, security or enduring owner

The original source intentionally leaves reputation magnitude to the host campaign. The demo therefore preserves the trigger / once-only behavior, not an invented number.

## Incomplete exit and recovery

The player can enter and traverse the atrium without securing the front door, but does not earn qualified `WPL_ATRIUM_REACHED`. Leaving through the atrium exit locks that exit behind Eli. If the front entrance remained unlocked, the two floor-clearance states are invalidated; boss defeat is retained. A successful first report remains impossible. Eli can attempt an incomplete report to either claimant or return through the original public entrance and complete the objectives.

## Enduring consequences

The source documents two **possible later** directions, not executed downstream effects:

- **PK:** preservation, infrastructure, training and protection — with increasingly controlled access and institutional authority as risks.
- **Bastion:** shared shelter, local decision-making, broad access and cultivation — with less systematic archival preservation and informal power as risks.

The optional post-handover outlook identifies these owner-specific opportunities, with explicit language that the transformation is not played or simulated. The `enduring_owner` state records the selected path.

## Verified tests

- Four complete initial-claimant / winner pairings, each with correct original winner dialogue.
- All four later role-correct loser scenes and one-time reputation marker.
- Revisit owner: no repeated handover.
- Revisit loser: no duplicate reputation marker or dialogue.
- Incomplete early report: no mutations; recovery eventually allows successful handover.
- Post-ownership loser dialogue remains available even when a test intentionally clears the transient `secured` flag.
- Player may conclude after handover with the losing response still pending.
- Six source-level dialogue inventories guard original lines across all seven beats; includes split spoken lines, source barks and a restored performance pause.
- Existing exploration tests validate the door event, rival introduction, optional evidence and radio calls, boss/deadbolt/crossing, recovery, and all five security prerequisites.

Run `npm run check` locally or inspect the GitHub Actions status on the corresponding PR.

## Adaptation boundaries / future work

This closes the **portfolio-scale text-only narrative**: it is not a replacement for Dying Light 2 combat, levels, campaign dialogue systems, NPC relationships, map geometry or actual later world-state persistence. The source contains production-open questions outside the demonstrator's legitimate remit. The full original Peacekeeper briefing remains intentionally uncut pending an explicit editorial pass.
