R_LIB=~/HOME-INST/R/$(Rscript -e 'cat(R.version$major, R.version$minor, sep=".")')
Rscript -e 'install.packages(c("Rcpp","TMB","nimble","terra", "sf", "spatstat",
"sp", "suncalc", "raster", "momentuHMM", "aniMotum", "maps", "magic",
"gridExtra", "geosphere", "geodist","CircStats", "data.table", "curl",
"adehabitatHR", "adehabitatLT", "adehabitatMA", "coda", "roxygen2", "circular",
"coda", "rjags"), type = "source", lib = Sys.getenv("R_LIB"),
repos = "https://cloud.r-project.org")'
