module vcs.portals.controllers.actions.delete_;

@safe:
import vcs.portals;

class DPTLDeleteAction : DPTLAction {
  mixin(APPControllerThis!("PTLDeleteAction"));

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DPTLDeleteAction~":DPTLDeleteAction("~this.name~")::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }    

    if (auto entity = collection.createFromTemplate) {             
      debug writeln("Created entity:", entity.id);

      entity.fromRequest(options);
      database[appSession.site, collectionName].removeOne(entity);
      options["redirect"] = rootPath;
    }
  }
}
mixin(APPControllerCalls!("PTLDeleteAction"));

version(test_uim_mdl) {
  unittest {
    // TODO
  }
}