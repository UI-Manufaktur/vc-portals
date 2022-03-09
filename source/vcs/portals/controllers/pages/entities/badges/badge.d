module vcs.portals.entities.badges.badge;

@safe:
import vcs.portals;

// 
class DPTLBadge : DOOPEntity {
  mixin(OOPEntityThis!("PTLBadge"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who updated the record on behalf of another user."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Shows the organization."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Badge Type"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Shows the reason for the status of the badge type."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Shows the sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Shows the date and time when the record was migrated. The date and time are displayed in the time zone selected in the solution options."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Shows the time zone code that was in use when the record was created."]),
        "backgroundColor": OOPStringAttribute.descriptions(["en":"Enter a hex value or RGB or RGBAex: #FFFFFFrgb(255,255,255)rgba(255,255,255,0.5)"]),
        "displayText": OOPStringAttribute.descriptions(["en":"Actual shown label for the badge"]),
        "iconName": OOPStringAttribute.descriptions(["en":"Add font awesome name such as fa-user"]),
      ])
      .registerPath("portal_badges");
  }
}
mixin(OOPEntityCalls!("PTLBadge"));

version(test_model_portals) {
  unittest {
    assert(PTLBadge);
  
  auto entity = PTLBadge;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}