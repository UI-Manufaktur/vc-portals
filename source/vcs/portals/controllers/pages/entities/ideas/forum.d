module vcs.portals.entities.ideas.forum;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "IdeaForum", "Create"));
mixin(APPActionView!("PTL", "IdeaForum", "Update"));
mixin(APPActionView!("PTL", "IdeaForum", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLIdeaForumCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLIdeaForumCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLIdeaForumUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLIdeaForumUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLIdeaForumDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLIdeaForumDeleteView); 
}}