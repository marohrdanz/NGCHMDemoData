## Load demo data

.onLoad <- function(libname, pkgname) {
    utils::data('TCGA.BRCA.Demo', package='NGCHMDemoData');
};

.onAttach <- function(libname, pkgname) {
    base::packageStartupMessage('Loaded TCGA BRCA demo data');
};
