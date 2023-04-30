# Download required packages. remove the packages if needed.

if (!require("pacman")) install.packages("pacman")
if (!require("pak")) install.packages("pak") 

options(timeout = 600) # increase downloading timeout to 600 seconds
pak::pkg_install(
  c(
    "tidyverse",
    "terra",
    "sf",
    "stars",
    "sfheaders",
    "MODIStsp",
    "ggspatial",
    "wmgeolab/rgeoboundaries"
  )
)

# Load required libraries 

pacman::p_load(
    tidyverse,
    terra,
    sf,
    stars,
    sfheaders,
    MODIStsp,
    ggspatial,
    rgeoboundaries
)
