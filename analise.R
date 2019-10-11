library(data.table)
library(dplyr)

setwd("C:/Users/coliv/Documents/R-Projects/OBRAS-TCU/Bancos")

load("tcu_obras_list.Rdata")
# Ordem dos bancos na lista: 
ordem <- c("caixa", "pac", "mec_creches", "mec_educacao_superior", "mec_ensino_tecnico")

for(i in 1:length(ordem)){
  
  assign(ordem[i], tcu_obras_list[[i]])
  
}


