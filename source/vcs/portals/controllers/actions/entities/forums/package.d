module vcs.portals.entities.forums;

@safe:
import vcs.portals;

mixin(EnityActions!("PTLForum", "/portals/forums", "portal_forums", "PTL"));
mixin(EnityActions!("PTLForumPost", "/portals/forumposts", "portal_forumposts", "PTL"));
mixin(EnityActions!("PTLForumThread", "/portals/forumthreads", "portal_forumthreads", "PTL"));
mixin(EnityActions!("PTLForumThreadType", "/portals/forumthreadtypes", "portal_forumthreadtypes", "PTL"));
