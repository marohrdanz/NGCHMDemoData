#' NGCHMDemoData
#'
#' This package provides several relatively large datasets that can be used to
#' demostrate the capabilities of the Next-Generation Clustered Heat Map (NG-CHM) system.
#'
#' The included data is a small subset of data from The Cancer Genome Atlas (TCGA) project.
#' There are five data files from three groups of cancer samples:
#' \itemize{
#'  \item 200 breast cancer (BRCA) samples.
#'  \item 169 glioblastoma (GBM) samples.
#'  \item 547 additional glioblastoma (GBM) samples.
#' }
#' The two Glioblastoma groups were characterized using different technologies (RNASeq and microarrays, respectively).
#'
#' **Note:** the NG-CHM system can work with data from any domain, not just biological data.
#'
#' **Note:** the included data has been been preprocessed, subsetted, and manipulated in multiple, undocumented ways. It
#' should only be used for evaluating and demonstrating the NG-CHM system and not for deriving any scientific conclusions.
#'
#' The different data sets overlap with each other in several ways that are documented in the data sets concerned.  These
#' overlaps can be easily used to generate NG-CHMs that integrate multiple data sets in a variety of ways to further
#' demonstrate the capabilities of NG-CHMs.
#'
#' @docType package
#' @name NGCHMDemoData
#' @seealso TCGA.BRCA.Demo, TCGA.GBM.Demo, TCGA.GBM.EXPR
NULL

#' A subset of the breast cancer (BRCA) data from TCGA.
#'
#' This dataset is loaded automatically when the package is loaded. It
#' consists of two related parts:
#' \itemize{
#'   \item A matrix of gene expression data.
#'   \item A vector containing the TP53 mutation status of each sample in the matrix.
#' }
#' @docType data
#' @name TCGA.BRCA.Demo
#' @seealso TCGA.BRCA.ExpressionData, TCGA.BRCA.TP53MutationData
NULL

#' A subset of the breast cancer (BRCA) expression data from TCGA
#'
#' @docType data
#' @name TCGA.BRCA.ExpressionData
#' @format A numeric data matrix with 3437 rows and 200 columns.
#' \itemize{
#'   \item Row labels are gene symbols (e.g. TSPAN6).  The NG-CHM label type is `bio.gene.hugo`.
#'   \item Column labels are TCGA barcodes up to the sample/vial field (16 characters total, e.g. TCGA-AO-A0JJ-01A). The NG-CHM label type is `bio.tcga.barcode.sample.vial`.
#'   \item Data has been log-transformed (min 1, max 21.75322)
#' }
#' @seealso TCGA.BRCA.Demo, TCGA.BRCA.TP53MutationData
NULL

#' TP53 mutation data for TCGA breast cancer (BRCA) samples
#'
#' @docType data
#' @name TCGA.BRCA.TP53MutationData
#' @format A length 200 character vector.
#' \itemize{
#'   \item Each element of the vector is either "WT" or "MUT".
#'   \item Element names are TCGA barcodes up to the sample/vial field (16 characters total, e.g. TCGA-AO-A0JJ-01A)
#' }
#' @seealso TCGA.BRCA.Demo, TCGA.BRCA.ExpressionData
NULL

#' A subset of the glioblastoma mutliforme (GBM) data from TCGA.
#'
#' This dataset is loaded by calling `data(TCGA.GBM.Demo)`.
#' 
#' The loaded data consists of two related parts:
#' \itemize{
#'   \item A matrix of gene expression data.
#'   \item A vector containing the TP53 mutation status of each sample in the matrix.
#' }
#' @docType data
#' @name TCGA.GBM.Demo
#' @seealso TCGA.GBM.ExpressionData, TCGA.GBM.TP53MutationData
NULL

#' Glioblastoma Multiforme (GBM) RNASeq expression data from TCGA
#'
#' Load using data('TCGA.GBM.Demo')
#'
#' @docType data
#' @name TCGA.GBM.ExpressionData
#' @format A numeric data matrix with 3540 rows and 169 columns.
#' \itemize{
#'   \item Row labels are gene symbols (e.g. SYK). The NG-CHM label type is `bio.gene.hugo`.
#'   \item Column labels are TCGA barcodes up to the center field (28 characters total, e.g. TCGA-06-0178-01A-01R-1849-01). The NG-CHM label type is `bio.tcga.barcode.sample.vial.portion.analyte.aliquot`.
#'   \item Data has been log-transformed and row centered (min -6.373672, max 9.701261).
#'   \item This data set and TCGA.BRCA.ExpressionData have 1225 genes (rows) in common.
#'   \item See TCGA.GBM.EXPR for commonalities with that data set.
#' }
#' @seealso TCGA.GBM.Demo, TCGA.GBM.TP53MutationData, TCGA.GBM.EXPR
NULL

#' TP53 mutation data for TCGA glioblastoma multiforme (GBM) samples
#'
#' Load using `r data('TCGA.GBM.Demo')`.
#'
#' @docType data
#' @name TCGA.GBM.TP53MutationData
#' @format A length 169 character vector.
#' \itemize{
#'   \item Each element of the vector is either "WT" or "MUT".
#'   \item Element names are TCGA barcodes up to the center field (28 characters total, e.g. TCGA-06-0178-01A-01R-1849-01).
#' }
#' @seealso TCGA.GBM.Demo, TCGA.GBM.ExpressionData
NULL

#' Glioblastoma Multiforme (GBM) microarray expression data from TCGA
#'
#' Load using `r data('TCGA.GBM.EXPR')`.
#'
#' @docType data
#' @name TCGA.GBM.EXPR
#' @format A numeric data matrix with 2000 rows and 547 columns.
#' \itemize{
#'   \item The data was generated using microarray platforms.
#'   \item Row labels are gene symbols (e.g. KRT19). The NG-CHM label type is `bio.gene.hugo`.
#'   \item Column labels are TCGA barcodes up to the center field (28 characters total, e.g. TCGA-02-0001-01C-01R-0177-01). The NG-CHM label type is `bio.tcga.barcode.sample.vial.portion.analyte.aliquot`.
#'   \item Data has been log-transformed (min 2.196606, max 14.41321).
#'   \item The data has no column labels in common with the data in TCGA.GBM.ExpressionData (as expected), but at the participant level (first 12 characters) there are 158 columns in common
#'         and at the vial level (first 16 characters) there are 152 in common.  There are 1098 genes in common.  This permits several types of NG-CHMs integrating the two data sets.
#' }
NULL
