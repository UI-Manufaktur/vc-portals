module vcs.portals.entities.badges.badge;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "Badge", "Create"));
mixin(APPActionView!("PTL", "Badge", "Update"));
mixin(APPActionView!("PTL", "Badge", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBadgeCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBadgeCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBadgeUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBadgeUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBadgeDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBadgeDeleteView); 
}}