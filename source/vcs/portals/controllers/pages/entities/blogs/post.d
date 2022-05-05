module vcs.portals.entities.blogs.post;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "BlogPost", "Create"));
mixin(APPActionView!("PTL", "BlogPost", "Update"));
mixin(APPActionView!("PTL", "BlogPost", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBlogPostCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBlogPostCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBlogPostUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBlogPostUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBlogPostDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBlogPostDeleteView); 
}}