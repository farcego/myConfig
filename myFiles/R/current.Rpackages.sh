R_LIB=~/HOME-INST/R/$(Rscript -e 'cat(R.version$major, R.version$minor, sep=".")')
Rscript -e 'install.packages(c("Rcpp","RcppArmadillo", "data.table","magrittr", "TMB","nimble","terra","sf","spatstat", "sp", "suncalc", "raster","maps", "magic", "gridExtra", "geosphere", "geodist","CircStats","curl","circular", "adehabitatLT",  "adehabitatHR", "momentuHMM", "roxygen2", "coda", "rjags", "plotrix", "remotes", "moult", "shiny", "DT", "unmarked", "marked", "emmeans"), type = "source", repos = "https://cloud.r-project.org")'

Rscript -e 'remotes::install_github("ianjonsen/aniMotum")'


# primero instalar mark desde el script llamandolo desde la web y si falla se llama desde HOME-INST
RMark



Este paquete deberia evitarse "glmmTMB"


este va como dependencias de HR , "adehabitatMA"
