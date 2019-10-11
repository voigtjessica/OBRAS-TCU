library(dplyr)
library(xlsx)
library(data.table)
library(janitor)

setwd("C:/Users/coliv/Documents/R-Projects/OBRAS-TCU/Arquivos originais")

sheets <- c("caixa", "pac", "mec_creches", "mec_educacao_superior", "mec_ensino_tecnico")

tcu_obras_list <- list()

for(i in 1:length(sheets)){
  
  a <- read.xlsx("TCU.xlsx", sheetName=sheets[i], encoding="UTF-8")
  
  a <- a %>%
    clean_names()
  
  tcu_obras_list[[i]] <- a

  }

setwd("C:/Users/coliv/Documents/R-Projects/OBRAS-TCU/Bancos")
save(tcu_obras_list, file="tcu_obras_list.Rdata")
