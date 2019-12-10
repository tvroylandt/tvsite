# ---------------------- #
# Gestion des posts #
# ---------------------- #

library(here)
library(tidyverse)
library(RCurl)

# Pour vendanges

# Copie de Github ---------------------------------------------------------
download.file("https://raw.githubusercontent.com/tvroylandt/vendanges/master/analyse_vendanges.Rmd", 
              here("static/post/analyse_vendanges.Rmmd"))

download.file("https://raw.githubusercontent.com/tvroylandt/vendanges/master/data/dads_filtre_05_15.rds", 
              here("static/post/data/dads_filtre_05_15.rds"))

# Liens symboliques -------------------------------------------------------
file.symlink(here("static/post/analyse_vendanges.Rmmd"), 
             here("content/post/2019-12-10-vendanges/"))

file.symlink(here("static/post/data/dads_filtre_05_15.rds"), 
             here("content/post/2019-12-10-vendanges/data/"))
