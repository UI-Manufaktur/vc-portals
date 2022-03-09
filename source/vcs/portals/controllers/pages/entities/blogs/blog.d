module vcs.portals.entities.blogs.blog;

@safe:
import vcs.portals;

// The root entity for a portal blog.
class DPTLBlog : DOOPEntity {
  mixin(OOPEntityThis!("PTLBlog"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "blogId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Shows whether the blog is active or inactive. Inactive records are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the blog's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "archiveTemplateId": OOPUUIDAttribute.descriptions(["en":"Shows the page template to be used to render the archive page (for example, posts by date, tags, and so on) of the blog."]),
        "homeTemplateId": OOPUUIDAttribute.descriptions(["en":"Shows the page template to be used to render the home/main page of the Blog."]),
        "postTemplateId": OOPUUIDAttribute.descriptions(["en":"Shows the page template to be used to render an individual Blog Post belonging to the Blog."]),
        "commentPolicy": OOPStringAttribute.descriptions(["en":"Specifies the post comment policy to be used by this Blog."]),
        "commentPolicy_display": OOPStringAttribute.descriptions(["en":""]),
        "displayOrder": OOPStringAttribute.descriptions(["en":""]),
        "parentPageId": OOPUUIDAttribute.descriptions(["en":"Shows the parent webpage associated with this blog, denoting its place in the website site map."]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":"Shows the URL path fragment to be used to build a URL for this blog."]),
        "summary": OOPStringAttribute.descriptions(["en":"A descriptive summary of the Blog."]),
        "webSiteId": OOPUUIDAttribute.descriptions(["en":"Shows the website associated with the blog."]),
        "blogPostLanguageId": OOPUUIDAttribute.descriptions(["en":"Option to make blog posts language specific"]),
      ])
      .registerPath("portal_blogs");    
  }

/*   auto webSite() {  
    if ("webSiteId" in this.attributes) 
      if (collection && collection.tenant) 
        return collection.tenant[PTLWebSite.entityClasses].findOne(["id": this.attributes["webSiteId"].toString]);
    return null; }
  unittest {
    version(test_model_portals) {
      // TODO
    }}
 */
}
mixin(OOPEntityCalls!("PTLBlog"));

version(test_model_portals) {
  unittest {
    assert(PTLBlog);
  
  auto entity = PTLBlog;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}