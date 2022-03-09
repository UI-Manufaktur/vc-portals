module vcs.portals.controllers.actions.entities.web;

@safe:
import vcs.portals;

public import vcs.portals.controllers.actions.entities.web.files;
public import vcs.portals.controllers.actions.entities.web.pages;
public import vcs.portals.controllers.actions.entities.web.sites;

mixin(EnityActions!("PTLWebRole", "/portals/webroles", "portal_webroles", "PTL"));
mixin(EnityActions!("PTLWebTemplate", "/portals/webtemplates", "portal_webtemplates", "PTL"));

