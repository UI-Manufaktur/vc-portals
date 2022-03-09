module vcs.portals.controllers.actions.entities.web.sites;

@safe:
import vcs.portals;

mixin(EnityActions!("PTLWebSite", "/portals/websites", "portal_websites", "PTL"));
mixin(EnityActions!("PTLWebSiteLanguage", "/portals/websitelanguages", "portal_websitelanguages", "PTL"));

