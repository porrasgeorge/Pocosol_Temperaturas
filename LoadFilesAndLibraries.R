rm(list = ls())

library(dplyr)
library(lubridate)
library(openxlsx)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Carga de Archivos

U1 <- read.csv("Temp_U1.csv", stringsAsFactors = F)
U1$DATA_HORA <- as.POSIXct(U1$DATA_HORA)

U2 <- read.csv("Temp_U2.csv", stringsAsFactors = F)
U2$DATA_HORA <- as.POSIXct(U2$DATA_HORA)

UG <- read.csv("Temp_UG.csv", stringsAsFactors = F)
UG$DATA_HORA <- as.POSIXct(UG$DATA_HORA)
