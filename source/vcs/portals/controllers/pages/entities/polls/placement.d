module vcs.portals.entities.polls.placement;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "PollPlacement", "Create"));
mixin(APPActionView!("PTL", "PollPlacement", "Update"));
mixin(APPActionView!("PTL", "PollPlacement", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollPlacementCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollPlacementCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollPlacementUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollPlacementUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollPlacementDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollPlacementDeleteView); 
}}