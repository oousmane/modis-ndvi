# Download burkina shapefiles from data.humdata.org (source is igb)
# one time execution
url <- "https://data.humdata.org/dataset/2940ed80-4b69-4b98-abaf-af79088852c5/resource/636d259b-22ba-4ecb-8702-ef58b38f14dd/download/bfa_adm_igb_20200323_shp.zip"

download.file(
  url = url,
  destfile = "bfa_adm_igb_20200323_shp.zip"
)

unzip(
  zipfile = "bfa_adm_igb_20200323_shp.zip",
  exdir ="bfa_adm_igb_20200323_shp" 
)

if(!fs::dir_exists("VegetationData")) fs::dir_create("VegetationData")
if(!fs::dir_exists("VegetationData/shapefile")) fs::dir_create("VegetationData/shapefile")


fs::dir_ls(path = "bfa_adm_igb_20200323_shp/",regexp = "adm0_igb_20200323") %>% 
  fs::file_copy(new_path = "VegetationData/shapefile")

# if you want to remove for space uncomment

# fs::file_delete("bfa_adm_igb_20200323_shp.zip")
# fs::dir_delete("bfa_adm_igb_20200323_shp/")