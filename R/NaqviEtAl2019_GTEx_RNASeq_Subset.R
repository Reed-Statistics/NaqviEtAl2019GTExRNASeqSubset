#' Naqvi et al., 2019, GTEx RNA-Seq data subset
#'
#' A subset (first 50 human subjects) of the Genotype-Tissue Expression project (GTEx, found at https://gtexportal.org/home/) RNA-Seq data used in the study by Naqvi et al., 2019. Data being used by Maddy Doak in her 2019-2020 Reed College Senior Thesis.
#'
#' Naqvi, S., Godfrey, A. K., Hughes, J. F., Goodheart, M. L., Mitchell, R. N., & Page, D. C. (2019). Conservation, acquisition, and functional impact of sex-biased gene expression in mammals. Science, 365(6450), eaaw7317. https://doi.org/10.1126/science.aaw7317
#'
#' @format A data frame with 575280 rows and 4 variables:
#' \describe{
#'   \item{Gene_name}{The name of the gene for which RNA-Seq data was collected}
#'   \item{Sample_ID}{The ID for the human from which the sample was taken as part of the GTEx project}
#'   \item{TPM}{The abundance of the transcript in question ("Transcripts Per Million") in the data}
#'   \item{Count}{The number of occurrences of the transcript in question in the data}
#' }
#' @source \url{http://pagelabsupplement.wi.mit.edu/papers/Naqvi_et_al_2019/}
"NaqviEtAl2019_GTEx_RNASeq_Subset"