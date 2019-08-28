makeFile <- function(ds, p_base = 10, p_delta = 0.2, Filename = "archivo"){

  D_filtered <- ds %>% 
    filter(Potencia > (p_base - p_delta) &
             Potencia < (p_base + p_delta)) %>%
    arrange(DATA_HORA) %>% 
    mutate(anho = year(DATA_HORA), 
           mes = month(DATA_HORA),
           dia = day(DATA_HORA)) 

  U_day <- D_filtered %>% group_by(anho, mes, dia) %>%
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
  
  U_month <- D_filtered %>% group_by(anho, mes) %>%
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
  
  
  U_year <- D_filtered %>% group_by(anho) %>%
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
  
  registros <- length(D_filtered$Potencia)
  
  DS_list <- list("Diario" = U_day, "Mensual" = U_month, "Anual" = U_year)
  write.xlsx(DS_list, 
             file = paste(Filename,
                          "_",
                          toString(p_base - p_delta),
                          "-",
                          toString(p_base + p_delta),
                          "MW", 
                          "_(",
                          toString(registros),
                          "registros).xlsx",
                          sep = ""))
  
}