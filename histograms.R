
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
