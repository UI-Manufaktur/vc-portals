module vcs.portals.views.entities.polls.poll;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "Poll", "Create"));
mixin(APPActionView!("PTL", "Poll", "Update"));
mixin(APPActionView!("PTL", "Poll", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollDeleteView); 
}}