module vcs.portals.views.entities.blogs.blog;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "Blog", "Create"));
mixin(APPActionView!("PTL", "Blog", "Update"));
mixin(APPActionView!("PTL", "Blog", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBlogCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBlogCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBlogUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBlogUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBlogDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBlogDeleteView); 
}}