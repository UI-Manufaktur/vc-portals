module vcs.portals.entities.polls.option;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "PollOption", "Create"));
mixin(APPActionView!("PTL", "PollOption", "Update"));
mixin(APPActionView!("PTL", "PollOption", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollOptionCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollOptionCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollOptionUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollOptionUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollOptionDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollOptionDeleteView); 
}}