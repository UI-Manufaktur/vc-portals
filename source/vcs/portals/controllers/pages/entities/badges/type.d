module vcs.portals.entities.badges.type;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "BadgeType", "Create"));
mixin(APPActionView!("PTL", "BadgeType", "Update"));
mixin(APPActionView!("PTL", "BadgeType", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBadgeTypeCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBadgeTypeCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBadgeTypeUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBadgeTypeUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLBadgeTypeDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLBadgeTypeDeleteView); 
}}