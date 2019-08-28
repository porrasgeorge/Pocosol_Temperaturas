rm(list = ls())

library(dplyr)
library(lubridate)
library(openxlsx)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pot12_min <- 8.8
pot12_max <- 9.2
potG_min <- 1.3
potG_max <- 1.5


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Unidad 01

U1 <- read.csv("Temp_U1.csv", stringsAsFactors = F)
U1$DATA_HORA <- as.POSIXct(U1$DATA_HORA)

U1_day <- U1 %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA), 
         mes = month(DATA_HORA),
         dia = day(DATA_HORA)) %>%
  filter(Potencia > pot12_min & Potencia < pot12_max ) %>%
  group_by(anho, mes, dia) %>%
  summarise(Pot_prom = round(mean(Potencia),2),
            Temp_R1_prom = round(mean(TEMP_R1),2), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = round(mean(TEMP_R2),2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = round(mean(TEMP_S1),2), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = round(mean(TEMP_S2),2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = round(mean(TEMP_T1),2), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = round(mean(TEMP_T2),2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = round(mean(CORRIEN_EXCIT),2),
            V_exc_prom = round(mean(TENSION_EXCIT),2))

U1_month <- U1 %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA), 
         mes = month(DATA_HORA)) %>%
  filter(Potencia > pot12_min & Potencia < pot12_max ) %>%
  group_by(anho, mes) %>%
  summarise(Pot_prom = round(mean(Potencia),2),
            Temp_R1_prom = round(mean(TEMP_R1),2), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = round(mean(TEMP_R2),2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = round(mean(TEMP_S1),2), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = round(mean(TEMP_S2),2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = round(mean(TEMP_T1),2), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = round(mean(TEMP_T2),2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = round(mean(CORRIEN_EXCIT),2),
            V_exc_prom = round(mean(TENSION_EXCIT),2))


U1_year <- U1 %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA)) %>%
  filter(Potencia > pot12_min & Potencia < pot12_max ) %>%
  group_by(anho) %>%
  summarise(Pot_prom = round(mean(Potencia),2),
            Temp_R1_prom = round(mean(TEMP_R1),2), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = round(mean(TEMP_R2),2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = round(mean(TEMP_S1),2), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = round(mean(TEMP_S2),2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = round(mean(TEMP_T1),2), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = round(mean(TEMP_T2),2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = round(mean(CORRIEN_EXCIT),2),
            V_exc_prom = round(mean(TENSION_EXCIT),2))


DS_list <- list("Diario" = U1_day, "Mensual" = U1_month, "Anual" = U1_year)
write.xlsx(DS_list, file = "C:/Data Science/ArhivosGenerados/Temperaturas Pocosol U1.xlsx")


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Unidad 02

U2 <- read.csv("Temp_U2.csv", stringsAsFactors = F)
U2$DATA_HORA <- as.POSIXct(U2$DATA_HORA)


U2_day <- U2 %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA), 
         mes = month(DATA_HORA),
         dia = day(DATA_HORA)) %>%
  filter(Potencia > pot12_min & Potencia < pot12_max ) %>%
  group_by(anho, mes, dia) %>%
  summarise(Pot_prom = round(mean(Potencia),2),
            Temp_R1_prom = round(mean(TEMP_R1),2), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = round(mean(TEMP_R2),2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = round(mean(TEMP_S1),2), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = round(mean(TEMP_S2),2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = round(mean(TEMP_T1),2), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = round(mean(TEMP_T2),2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = round(mean(CORRIEN_EXCIT),2),
            V_exc_prom = round(mean(TENSION_EXCIT),2))

U2_month <- U2 %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA), 
         mes = month(DATA_HORA)) %>%
  filter(Potencia > pot12_min & Potencia < pot12_max ) %>%
  group_by(anho, mes) %>%
  summarise(Pot_prom = round(mean(Potencia),2),
            Temp_R1_prom = round(mean(TEMP_R1),2), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = round(mean(TEMP_R2),2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = round(mean(TEMP_S1),2), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = round(mean(TEMP_S2),2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = round(mean(TEMP_T1),2), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = round(mean(TEMP_T2),2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = round(mean(CORRIEN_EXCIT),2),
            V_exc_prom = round(mean(TENSION_EXCIT),2))


U2_year <- U2 %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA)) %>%
  filter(Potencia > pot12_min & Potencia < pot12_max ) %>%
  group_by(anho) %>%
  summarise(Pot_prom = round(mean(Potencia),2),
            Temp_R1_prom = round(mean(TEMP_R1),2), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = round(mean(TEMP_R2),2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = round(mean(TEMP_S1),2), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = round(mean(TEMP_S2),2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = round(mean(TEMP_T1),2), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = round(mean(TEMP_T2),2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = round(mean(CORRIEN_EXCIT),2),
            V_exc_prom = round(mean(TENSION_EXCIT),2))


DS_list <- list("Diario" = U2_day, "Mensual" = U2_month, "Anual" = U2_year)
write.xlsx(DS_list, file = "C:/Data Science/ArhivosGenerados/Temperaturas Pocosol U2.xlsx")


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Unidad Gata

UG <- read.csv("Temp_UG.csv", stringsAsFactors = F)
UG$DATA_HORA <- as.POSIXct(UG$DATA_HORA)


UG_day <- UG %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA), 
         mes = month(DATA_HORA),
         dia = day(DATA_HORA)) %>%
  filter(Potencia > potG_min & Potencia < potG_max ) %>%
  group_by(anho, mes, dia) %>%
  summarise(Pot_prom = round(mean(Potencia),2),
            Temp_R1_prom = round(mean(TEMP_R1),2), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = round(mean(TEMP_R2),2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = round(mean(TEMP_S1),2), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = round(mean(TEMP_S2),2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = round(mean(TEMP_T1),2), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = round(mean(TEMP_T2),2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = round(mean(CORRIEN_EXCIT),2),
            V_exc_prom = round(mean(TENSION_EXCIT),2))

UG_month <- UG %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA), 
         mes = month(DATA_HORA)) %>%
  filter(Potencia > potG_min & Potencia < potG_max ) %>%
  group_by(anho, mes) %>%
  summarise(Pot_prom = round(mean(Potencia),2),
            Temp_R1_prom = round(mean(TEMP_R1),2), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = round(mean(TEMP_R2),2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = round(mean(TEMP_S1),2), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = round(mean(TEMP_S2),2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = round(mean(TEMP_T1),2), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = round(mean(TEMP_T2),2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = round(mean(CORRIEN_EXCIT),2),
            V_exc_prom = round(mean(TENSION_EXCIT),2))


UG_year <- UG %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA)) %>%
  filter(Potencia > potG_min & Potencia < potG_max ) %>%
  group_by(anho) %>%
  summarise(Pot_prom = round(mean(Potencia),2),
            Temp_R1_prom = round(mean(TEMP_R1),2), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = round(mean(TEMP_R2),2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = round(mean(TEMP_S1),2), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = round(mean(TEMP_S2),2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = round(mean(TEMP_T1),2), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = round(mean(TEMP_T2),2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = round(mean(CORRIEN_EXCIT),2),
            V_exc_prom = round(mean(TENSION_EXCIT),2))

DS_list <- list("Diario" = UG_day, "Mensual" = UG_month, "Anual" = UG_year)
write.xlsx(DS_list, file = "C:/Data Science/ArhivosGenerados/Temperaturas Pocosol UG.xlsx")