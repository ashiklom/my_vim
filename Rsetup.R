## Install dependencies for Nvim R package
pkgs <- c("devtools", "setwidth")
for(p in pkgs)
    if(!(p %in% installed.packages())) install.packages(p)
library(devtools)
install_github('jalvesaq/nvimcom')
colorout.fname <- "colorout_1.1-0.tar.gz"
colorout.link <- paste0("http://www.lepem.ufc.br/jaa/vimr/",
                        colorout.fname)
download.file(colorout.link, destfile = "colorout.tar.gz")
install.packages("colorout.tar.gz", type="source", repos=NULL)
file.remove("colorout.tar.gz")
