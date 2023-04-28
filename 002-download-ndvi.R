library(tidyverse)
library(MODIStsp)


MODIStsp_get_prodlayers("M*D13Q1") # see bands names

# create output directory if needed

 if(!fs::dir_exists("VegetationData")) fs::dir_create("VegetationData")

# Modis Vegetation indices downloading ! Pay attention to area and/or 
# period of interest. Files can be really huge.

print("---- Start Vegetation Data Downloading -----")
MODIStsp(
  gui = FALSE,
  out_folder = "VegetationData",
  out_folder_mod = "VegetationData",
  selprod = "Vegetation Indexes_16Days_250m (M*D13Q1)",
  bandsel = c("NDVI","EVI"), # select band of interest 
  user = "", #eartdata username
  password = "", #earthdata password
  start_date = "2001.01.01", # start_date modify as needed
  end_date = "2001.01.31", # end_date modify as needed
  verbose = FALSE,
  spatmeth = "file",
  spafile = "VegetationData/shapefile/bfa_admbnda_adm0_igb_20200323.shp",
  out_format = "GTiff"
)

cat(
  "All files were downloaded, see *.tif files here:
  /VegetationData/bfa_admbnda_adm0_igb_20200323/VI_16Days_250m_v6/NDVI/"
)

  

 