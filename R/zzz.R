## Load demo data

.onLoad <- function(libname, pkgname) {
	data('TCGA.GBM.Demo', package='NGCHMDemoData')
	message('Loaded TCGA GBM demo data')
}


