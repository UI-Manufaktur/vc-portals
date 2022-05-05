module vcs.portals.entities.cases.deflection;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "CaseDeflection", "Create"));
mixin(APPActionView!("PTL", "CaseDeflection", "Update"));
mixin(APPActionView!("PTL", "CaseDeflection", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLCaseDeflectionCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLCaseDeflectionCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLCaseDeflectionUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLCaseDeflectionUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLCaseDeflectionDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLCaseDeflectionDeleteView); 
}}