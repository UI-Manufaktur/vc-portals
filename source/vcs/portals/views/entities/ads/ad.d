module vcs.portals.entities.ads.ad;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "Ad", "Create"));
mixin(APPActionView!("PTL", "Ad", "Update"));
mixin(APPActionView!("PTL", "Ad", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLAdCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLAdCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLAdUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLAdUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLAdDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLAdDeleteView); 
}}