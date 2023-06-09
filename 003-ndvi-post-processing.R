data <- rast(x="VegetationData/bfa_admbnda_adm0_igb_20200323/VI_16Days_250m_v6/NDVI/MOD13Q1_NDVI_2001_001.tif")

bf1 <- sf::read_sf("VegetationData/shapefile/bfa_admbnda_adm0_igb_20200323.shp")

data <- terra::project(data,"EPSG:4326")

masked <- mask(data,bf)/10000

ggplot()+
  geom_spatraster(
    data = masked,
  )+
  geom_sf(
    data = bf,
    fill =NA,
    linewidth = 1
  )+
  scale_fill_terrain_b(
    na.value = NA,
    breaks = c(-Inf,0,0.2,0.3,0.5,Inf)
  )

raster_ts <- load(
  file = "VegetationData/bfa_admbnda_adm0_igb_20200323/VI_16Days_250m_v6/Time_Series/RData/Terra/NDVI/MOD13Q1_NDVI_1_2001_17_2001_RData.RData"
  ) %>% 
  get() %>% 
  rast()

n <- raster_ts %>% 
  varnames() 
  
function(x){
  str_split(n,pattern = )
  
}