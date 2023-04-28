# Download burkina shapefiles for data.humdata.org (source is igb)
# one time
url <- "https://data.humdata.org/dataset/2940ed80-4b69-4b98-abaf-af79088852c5/resource/636d259b-22ba-4ecb-8702-ef58b38f14dd/download/bfa_adm_igb_20200323_shp.zip"

download.file(
  url = url,
  destfile = "bfa_adm_igb_20200323_shp.zip"
)

unzip(
  zipfile = "bfa_adm_igb_20200323_shp.zip",
  exdir ="bfa_adm_igb_20200323_shp" 
)
