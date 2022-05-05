module vcs.portals.views.entities.web.files.log;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "WebFileLog", "Create"));
mixin(APPActionView!("PTL", "WebFileLog", "Update"));
mixin(APPActionView!("PTL", "WebFileLog", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebFileLogCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebFileLogCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebFileLogUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebFileLogUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebFileLogDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebFileLogDeleteView); 
}}