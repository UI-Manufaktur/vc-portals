module vcs.portals.views.entities.forums.forum;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "Forum", "Create"));
mixin(APPActionView!("PTL", "Forum", "Update"));
mixin(APPActionView!("PTL", "Forum", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumDeleteView); 
}}