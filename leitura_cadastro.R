#limpa o ambiente
rm(list=ls())

library(readr)
cadastro <- read_csv("C:/Users/logonrmlocal/Downloads/cadastro.csv")
View(cadastro)

# verifica os tipos
str(cadastro)

#analise descritiva
#medidas resumo
summary(cadastro)

#mudar tipo da variavel para qualitativa
cadastro$CEP <- factor(cadastro$CEP)

str(cadastro$CEP)

#mostrando a contagem de CEP
summary(cadastro$CEP)

summary(cadastro)
