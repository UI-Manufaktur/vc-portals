module vcs.portals.entities.blogs;

@safe:
import vcs.portals;

mixin(EnityActions!("PTLBlog", "/portals/blogs", "portal_blogs", "PTL"));
mixin(EnityActions!("PTLBlogPost", "/portals/blogposts", "portal_blogposts", "PTL"));

