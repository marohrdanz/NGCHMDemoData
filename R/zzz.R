## Load demo data

.onLoad <- function(libname, pkgname) {
	data('TCGA.BRCA.Demo', package='NGCHMDemoData')
	message('Loaded TCGA BRCA demo data')
}


