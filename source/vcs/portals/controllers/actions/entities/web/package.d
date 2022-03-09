module vcs.portals.entities.web;

@safe:
import vcs.portals;

public import vcs.portals.entities.web.files;
public import vcs.portals.entities.web.pages;
public import vcs.portals.entities.web.sites;

mixin(EnityActions!("PTLWebRole", "/portals/webroles", "portal_webroles", "PTL"));
mixin(EnityActions!("PTLWebTemplate", "/portals/webtemplates", "portal_webtemplates", "PTL"));

