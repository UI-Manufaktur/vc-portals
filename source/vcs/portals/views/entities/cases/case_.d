module vcs.portals.views.entities.cases.case_;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "Case", "Create"));
mixin(APPActionView!("PTL", "Case", "Update"));
mixin(APPActionView!("PTL", "Case", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLCaseCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLCaseCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLCaseUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLCaseUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLCaseDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLCaseDeleteView); 
}}