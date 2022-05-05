module vcs.portals.entities.web.files.file;

@safe:
import vcs.portals;

mixin(APPActionView!("PTL", "WebFile", "Create"));
mixin(APPActionView!("PTL", "WebFile", "Update"));
mixin(APPActionView!("PTL", "WebFile", "Delete"));

version(test_uim_modeller) {
  unittest {
    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebFileCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebFileCreateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebFileUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebFileUpdateView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(new DPTLWebFileDeleteView); 

    writeln("--- Tests in ", __MODULE__, "/", __LINE__);
		testView(PTLWebFileDeleteView); 
}}