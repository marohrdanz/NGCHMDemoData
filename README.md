# NGCHM Demo Data


![r-universe](https://marohrdanz.r-universe.dev/badges/NGCHMDemoData?scale=1.4&color=pink&style=flat)

```r
# Install NGCHMDemoData in R:
install.packages('NGCHMDemoData', repos = c('https://marohrdanz.r-universe.dev', 'https://cloud.r-project.org'))
```

This package contains demonstration data for the 
[NGCHM-R package](https://github.com/MD-Anderson-Bioinformatics/NGCHM-R). 

When the NGCHMDemoData package is loaded, the demo data is loaded.

This data was obtained from the [MBatch Omic Browser](https://bioinformatics.mdanderson.org/MQA/).
In order to create a data set small enough for demonstration purposes the expression data was filtered
to remove genes with low expression and variance, and only 200 randomly selected samples were used.

- TCGA.BRCA.ExpressionData MBatch Omic Browser information:
  - Source: GDC
  - Category: Gene Expression Quantification
  - Platform: HTSeq - Counts
  - Version: 2020_12_22_1000
- TCGA.BRCA.TP53MutationData MBatch Omic Browser information:
  - Source: GDC
  - Category: Masked Somatic Mutation
  - Platform: SomaticSniper Variant Aggregation and Masking
  - Version: 2020_12_22_1000


