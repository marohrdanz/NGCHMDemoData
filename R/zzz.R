## Load demo data

.onLoad <- function(libname, pkgname) {
	data('TCGA.GBM.EXPR', package='NGCHMDemoData')
	data('TCGA.GBM.PCA', package='NGCHMDemoData')
	message('Loaded TCGA GBM data')
}


