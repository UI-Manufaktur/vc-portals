module vcs.portals.views.entities.ideas.idea;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "Idea", "Create"));
mixin(APPActionView!("PTL", "Idea", "Update"));
mixin(APPActionView!("PTL", "Idea", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLIdeaCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLIdeaCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLIdeaUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLIdeaUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLIdeaDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLIdeaDeleteView); 
}}