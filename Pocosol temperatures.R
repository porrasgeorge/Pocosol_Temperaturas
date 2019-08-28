#source("LoadFilesAndLibraries.R")
source("Functions.R")

start_time <- Sys.time()


# Time difference of 1.000327 mins
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
folder <- "C:/Data Science/ArhivosGenerados/"

file_name <- paste(folder, "Temp U1")
for (pot in seq(5, 12, 0.5)) {
  makeFile(ds = U1, 
           p_base = pot,
           p_delta = 0.25,
           Filename = file_name)
}

file_name <- paste(folder, "Temp U2")
for (pot in seq(5, 12, 0.5)) {
  makeFile(ds = U2, 
           p_base = pot, 
           p_delta = 0.25,
           Filename = file_name)
}

file_name <- paste(folder, "Temp UG")
for (pot in seq(0.4, 2, 0.1)) {
  makeFile(ds = UG, 
           p_base = pot,
           p_delta = 0.05,
           Filename = file_name)
}

end_time <- Sys.time()

end_time - start_time


#source("Histograms.R")
