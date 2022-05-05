module vcs.portals.views.entities.ads.placement;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "AdPlacement", "Create"));
mixin(APPActionView!("PTL", "AdPlacement", "Update"));
mixin(APPActionView!("PTL", "AdPlacement", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLAdPlacementCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLAdPlacementCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLAdPlacementUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLAdPlacementUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLAdPlacementDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLAdPlacementDeleteView); 
}}