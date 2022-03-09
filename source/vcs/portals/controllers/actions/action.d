module vcs.portals.controllers.actions.action;

@safe:
import vcs.portals;

class DPTLAction : DAPPActionController {
  mixin(APPControllerThis!("PTLAction"));

  override void initialize() {
    super.initialize;

    this
    .checks([
      APPCheckAppSessionHasSession, APPCheckAppSessionHasSite, // AppSession related checks
      APPCheckDatabaseHasSystems]); // Database related checks
  }
}
mixin(APPControllerCalls!("PTLAction"));

version(test_uim_mdl) {
  unittest {
    // TODO
  }
}