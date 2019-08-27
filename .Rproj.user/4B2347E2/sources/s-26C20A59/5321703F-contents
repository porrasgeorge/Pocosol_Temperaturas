rm(list = ls())

library(dplyr)
library(lubridate)
library(openxlsx)

U1_R <- read.csv("Temp_U1.csv", stringsAsFactors = F)
U1_R$DATA_HORA <- as.POSIXct(U1_R$DATA_HORA)

###############################


U1 <- U1_R

U1_day <- U1 %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA), 
         mes = month(DATA_HORA),
         dia = day(DATA_HORA)) %>%
  filter(Potencia > 11.9) %>%
  group_by(anho, mes, dia) %>%
  summarise(Pot_prom = mean(Potencia),
            Temp_R1_prom = mean(TEMP_R1), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = mean(TEMP_R2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = mean(TEMP_S1), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = mean(TEMP_S2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = mean(TEMP_T1), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = mean(TEMP_T2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = mean(CORRIEN_EXCIT),
            V_exc_prom = mean(TENSION_EXCIT))

U1_month <- U1 %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA), 
         mes = month(DATA_HORA)) %>%
  filter(Potencia > 11.9) %>%
  group_by(anho, mes) %>%
  summarise(Pot_prom = mean(Potencia),
            Temp_R1_prom = mean(TEMP_R1), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = mean(TEMP_R2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = mean(TEMP_S1), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = mean(TEMP_S2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = mean(TEMP_T1), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = mean(TEMP_T2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = mean(CORRIEN_EXCIT),
            V_exc_prom = mean(TENSION_EXCIT))


U1_year <- U1 %>% arrange(DATA_HORA) %>% 
  mutate(anho = year(DATA_HORA)) %>%
  filter(Potencia > 11.9) %>%
  group_by(anho) %>%
  summarise(Pot_prom = mean(Potencia),
            Temp_R1_prom = mean(TEMP_R1), 
            Temp_R1_max = max(TEMP_R1), 
            Temp_R2_prom = mean(TEMP_R2),
            Temp_R2_max = max(TEMP_R2),
            Temp_S1_prom = mean(TEMP_S1), 
            Temp_S1_max = max(TEMP_S1),
            Temp_S2_prom = mean(TEMP_S2),
            Temp_S2_max = max(TEMP_S2), 
            Temp_T1_prom = mean(TEMP_T1), 
            Temp_T1_max = max(TEMP_T1),
            Temp_T2_prom = mean(TEMP_T2),
            Temp_T2_max = max(TEMP_T2),
            I_exc_prom = mean(CORRIEN_EXCIT),
            V_exc_prom = mean(TENSION_EXCIT))


DS_list <- list("Diario" = U1_day, "Mensual" = U1_month, "Anual" = U1_year)
write.xlsx(DS_list, file = "C:/Data Science/ArhivosGenerados/Temperaturas Pocosol U1.xlsx")