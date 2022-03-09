module vcs.portals.controllers.actions.entities.polls;

@safe:
import vcs.portals;

mixin(EnityActions!("PTLPoll", "/portals/polls", "portal_polls", "PTL"));
mixin(EnityActions!("PTLPollOption", "/portals/polloptions", "portal_polloptions", "PTL"));
mixin(EnityActions!("PTLPollPlacement", "/portals/pollplacements", "portal_pollplacements", "PTL"));
mixin(EnityActions!("PTLPollSubmission", "/portals/pollsubmissions", "portal_pollsubmissions", "PTL"));

