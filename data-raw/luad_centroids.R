#' Wiklerson's LUAD predictor
#'
#' @return centroids data set for LUAD
library(dplyr)
library(tidyverse)
luad_centroids <- read.csv(file.path(data_dir, "LUAD/wilkerson.2012.LAD.predictor.centroids.csv")) %>%
  column_to_rownames(var = 'X')
usethis::use_data(luad_centroids, compress = 'xz', overwrite = TRUE)
