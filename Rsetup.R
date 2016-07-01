## Install dependencies for Nvim R package
pkgs <- c("devtools", "setwidth")
for(p in pkgs)
    if(!(p %in% installed.packages())) install.packages(p)
library(devtools)
install_github('jalvesaq/nvimcom')
install_github('jalvesaq/colorout')
