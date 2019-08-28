#source("LoadFilesAndLibraries.R")
source("Functions.R")


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

hist(U1$Potencia, 
     main = "Unidad 1", 
     xlim = c(0, 13), 
     breaks = 26,
     col = "green",
     border = "blue",
     xlab = "Potencia",
     ylab = "Frecuencia")

hist(U2$Potencia, 
     main = "Unidad 2", 
     xlim = c(0, 13), 
     breaks = 26,
     col = "green",
     border = "blue",
     xlab = "Potencia",
     ylab = "Frecuencia")
UG$Potencia <- ifelse(UG$Potencia < 0, 0, UG$Potencia)
  
  
hist(UG$Potencia, 
     main = "Unidad Gata", 
     xlim = c(0, 2), 
     breaks = 26,
     col = "green",
     border = "blue",
     xlab = "Potencia",
     ylab = "Frecuencia")

