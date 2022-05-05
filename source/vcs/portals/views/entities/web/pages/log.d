module vcs.portals.views.entities.web.pages.log;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "WebPageLog", "Create"));
mixin(APPActionView!("PTL", "WebPageLog", "Update"));
mixin(APPActionView!("PTL", "WebPageLog", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebPageLogCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebPageLogCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebPageLogUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebPageLogUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebPageLogDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebPageLogDeleteView); 
}}