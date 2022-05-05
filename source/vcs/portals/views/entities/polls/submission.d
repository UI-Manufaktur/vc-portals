module vcs.portals.entities.polls.submission;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "PollSubmission", "Create"));
mixin(APPActionView!("PTL", "PollSubmission", "Update"));
mixin(APPActionView!("PTL", "PollSubmission", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollSubmissionCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollSubmissionCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollSubmissionUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollSubmissionUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLPollSubmissionDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLPollSubmissionDeleteView); 
}}