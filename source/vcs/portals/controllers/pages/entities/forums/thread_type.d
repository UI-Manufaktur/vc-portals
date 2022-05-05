module vcs.portals.entities.forums.thread_type;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "ForumThreadType", "Create"));
mixin(APPActionView!("PTL", "ForumThreadType", "Update"));
mixin(APPActionView!("PTL", "ForumThreadType", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumThreadTypeCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumThreadTypeCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumThreadTypeUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumThreadTypeUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumThreadTypeDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumThreadTypeDeleteView); 
}}