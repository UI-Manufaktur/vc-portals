module vcs.portals.controllers.actions.create;

@safe:
import vcs.portals;

class DPTLCreateAction : DPTLAction {
  mixin(APPControllerThis!("PTLCreateAction"));

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DPTLCreateAction~":DPTLCreateAction("~this.name~")::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }    

    if (this.collection) {
      if (auto entity = collection.createFromTemplate) {             
        debug writeln("Created entity:", entity.id);

        entity.fromRequest(options);

        collection.insertOne(entity);
        debug writeln("entity.id = ", entity.id);

        options["redirect"] = this.rootPath ~ "/view?id="~entity.id.toString; 
      }
    }
	}
}
mixin(APPControllerCalls!("PTLCreateAction"));
