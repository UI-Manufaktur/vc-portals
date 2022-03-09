module vcs.portals.controllers.actions.update;

@safe:
import vcs.portals;

class DPTLUpdateAction : DPTLAction {
  mixin(APPControllerThis!("PTLUpdateAction"));

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DPTLUpdateAction~":DPTLUpdateAction("~this.name~")::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }     
  
    if (auto entityId = options.get("entity_id", null)) {
      auto entity = collection.findOne(UUID(entityId));
      
      entity.fromRequest(options);
      foreach(name, attribute; entity.attributes) { // Workaround :-O
        if (auto booleanAttribute = cast(DOOPBooleanAttribute)attribute) {
          if ("entity_"~name !in options) booleanAttribute.value(false);  
        }
      }

      if (auto site = appSession.site) {
        database[site.name, collectionName].updateOne(entity);
        options["redirect"] = rootPath~"/view?id="~entityId;
      }
    }
    else {
      this.error("Entity Id not found");
    }
	}
}
mixin(APPControllerCalls!("PTLUpdateAction"));

version(test_uim_mdl) {
  unittest {
    // TODO
  }
}