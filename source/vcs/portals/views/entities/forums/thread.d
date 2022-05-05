module vcs.portals.views.entities.forums.thread;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "ForumThread", "Create"));
mixin(APPActionView!("PTL", "ForumThread", "Update"));
mixin(APPActionView!("PTL", "ForumThread", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumThreadCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumThreadCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumThreadUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumThreadUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLForumThreadDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLForumThreadDeleteView); 
}}