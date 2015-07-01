## Install dependencies for Nvim R package
pkgs <- c("devtools", "setwidth")
for(p in pkgs)
    if(!(p %in% installed.packages())) install.packages(p)
library(devtools)
install_github('jalvesaq/nvimcom')
download.file("http://www.lepem.ufc.br/jaa/vimr/colorout_1.1-0.tar.gz", destfile = "colorout_1.1-0.tar.gz")
install.packages("colorout_1.1-0.tar.gz", type="source", repos=NULL)

#Paste the following into ~/.Rprofile:
#if(interactive()){
       #library(colorout) # For colorized output in terminal emulators
       #library(setwidth) # For automatic update of options('width')
       #options(nvimcom.verbose = 1) # To know nvimcom was successfully loaded
       #library(nvimcom)
#}
