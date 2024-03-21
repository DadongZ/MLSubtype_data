#' Wiklerson's LUSC predictor
#'
#' @return centroids data set for LUSC
library(dplyr)
library(tidyverse)
lusc_centroids <- read.csv(file.path(data_dir, "LUSC/predictor.centroids.csv"))%>%
  column_to_rownames(var = 'X')

usethis::use_data(lusc_centroids, compress = 'xz', overwrite = TRUE)
