## code to prepare `DATASET` dataset goes here

# Data from http://pagelabsupplement.wi.mit.edu/papers/Naqvi_et_al_2019/

library(tidyverse)
library(reshape2)

human_counts <- as.data.frame(read.table(gzfile("~/math241S20PkgGrp5/data-raw/gtex.filt.salmon.tximport.adj.counts.txt.gz"), header = TRUE, row.names = 1, sep = "\t")) 
  human_counts <- human_counts[, 1:50] %>%
    mutate(Gene_name = rownames(human_counts)) %>%
    melt(id.vars = "Gene_name")
  colnames(human_counts) <- c("Gene_name", "Sample_ID", "Count")
human_tpm    <- as.data.frame(read.table(gzfile("~/math241S20PkgGrp5/data-raw/gtex.filt.salmon.tximport.unadj.tpm.txt.gz"), header = TRUE, row.names = 1, sep = "\t")) 
  human_tpm <- human_tpm[, 1:50] %>%
    mutate(Gene_name = rownames(human_tpm)) %>%
    melt(id.vars = "Gene_name") 
  colnames(human_tpm) <- c("Gene_name", "Sample_ID", "TPM")

NaqviEtAl2019_GTEx <- as_tibble(left_join(human_tpm, human_counts, by = c("Gene_name", "Sample_ID")))
NaqviEtAl2019_GTEx_RNASeq_Subset <- drop_na(NaqviEtAl2019_GTEx, c("Gene_name", "Sample_ID", "TPM", "Count"))

usethis::use_data(NaqviEtAl2019_GTEx_RNASeq_Subset, overwrite = TRUE)
