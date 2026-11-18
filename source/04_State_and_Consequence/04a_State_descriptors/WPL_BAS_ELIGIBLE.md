# WPL_BAS_ELIGIBLE

Boolean, initialized as false. Records Bastion's eligibility to receive Eli's first successful report and [[WPL_E01_KEY]] handover.

Before [[WPL_OWNERSHIP]] is resolved, both claimant eligibility states become true when [[WPL_SECURED]] is true. Incomplete security disables successful handover eligibility. [[WPL_INITIAL_CLAIMANT]] does not restrict which faction Eli can choose.

The first successful report/key handover awards ownership once. Later reporting to the second faction is a losing-faction consequence, not another handover. [[WPL_EVENT07_WIN_RESOLUTION]] disables first-report claimant eligibility after ownership is committed.
