library(tidyverse)
library(MODIStsp)

MODIStsp_get_prodlayers("M*D13Q1")

MODIStsp(
  gui = FALSE,
  out_folder = "VegetationData",
  out_folder_mod = "VegetationData",
  selprod = "Vegetation Indexes_16Days_250m (M*D13Q1)",
  bandsel = "NDVI",
  user = "", #eartdata username
  password = "", #earthdata password
  start_date = "2001.01.01", # start_date modify as needed
  end_date = "2001.01.31", # end_date modify as needed
  verbose = FALSE,
  spatmeth = "file",
  spafile = "VegetationData/shapefile/bfa_admbnda_adm0_igb_20200323.shp",
  out_format = "GTiff"
)


  
 