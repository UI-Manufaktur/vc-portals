module vcs.portals.controllers.actions.entities.cases;

@safe:
import vcs.portals;

mixin(EnityActions!("PTLCase", "/portals/cases", "portal_cases", "PTL"));
mixin(EnityActions!("PTLCaseDeflection", "/portals/casedeflections", "portal_casedeflections", "PTL"));
