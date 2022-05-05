module vcs.portals.entities.forums.post;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "ForumPost", "Create"));
mixin(APPActionView!("PTL", "ForumPost", "Update"));
mixin(APPActionView!("PTL", "ForumPost", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumPostCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumPostCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumPostUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumPostUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumPostDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumPostDeleteView); 
}}