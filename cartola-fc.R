#limpa o ambiente
rm(list=ls())

library(readxl)
Cartola_FC2018 <- read_excel("C:/Users/logonrmlocal/Downloads/Trab03/Cartola_FC2018.xlsx")
View(Cartola_FC2018)

media_gols <- mean(Cartola_FC2018$gols)

#help
?dpois

# distribuicao de poisson probabilidade de 0 a 7 gols ocorrerem
dpois(c(0:1), media_gols)

install.packages("tidyverse")

library(tidyverse)
library(ggplot2)

# grafico da variavel gols
g = ggplot(Cartola_FC2018) +
  geom_bar(aes(gols)) +
  labs(x="Numero de gols", y="Frequencia de partidas",
       title="Distribuicao de gols no Campeonato Brasileiro de 2018") +
  theme_minimal()
# o titulo deve conter o que, onde e quando  
g

