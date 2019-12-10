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


# Liens symboliques à faire ensuite de façon relative en ligne de commande
# Aller dans le bon dossier
# faire ln -rs chemin_vers_le_fichier nom_du_lien