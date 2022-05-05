module vcs.portals.entities.web.pages.page;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "WebPage", "Create"));
mixin(APPActionView!("PTL", "WebPage", "Update"));
mixin(APPActionView!("PTL", "WebPage", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebPageCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebPageCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebPageUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebPageUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebPageDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebPageDeleteView); 
}}