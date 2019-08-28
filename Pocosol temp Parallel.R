library(foreach)
library(doParallel)

#source("LoadFilesAndLibraries.R")
source("Functions.R")

cores = detectCores()
cl <- makeCluster(cores[1])
registerDoParallel(cl)


start_time <- Sys.time()

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
folder <- "C:/Data Science/ArhivosGenerados/"

file_name <- paste(folder, "Temp U1")
foreach(pot = seq(5, 12, 0.5), .packages = c('dplyr', 'lubridate', 'openxlsx')) %dopar% {
  makeFile(ds = U1, 
           p_base = pot,
           p_delta = 0.25,
           Filename = file_name)
}

file_name <- paste(folder, "Temp U2")
foreach(pot = seq(5, 12, 0.5), .packages = c('dplyr', 'lubridate', 'openxlsx')) %dopar% {
  makeFile(ds = U2, 
           p_base = pot, 
           p_delta = 0.25,
           Filename = file_name)
}

file_name <- paste(folder, "Temp UG")
foreach(pot = seq(0.4, 2, 0.1), .packages = c('dplyr', 'lubridate', 'openxlsx')) %dopar% {
  makeFile(ds = UG, 
           p_base = pot,
           p_delta = 0.05,
           Filename = file_name)
}

end_time <- Sys.time()
end_time - start_time

stopCluster(cl)

#source("Histograms.R")