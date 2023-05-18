#limpa o ambiente
rm(list=ls())

library(readr)
cadastro <- read_csv("C:/Users/logonrmlocal/Downloads/cadastro.csv")
View(cadastro)


# verifica os tipos
str(cadastro)

?str
?summary

#analise descritiva
#medidas resumo
summary(cadastro)

#mudar tipo da variavel para qualitativa
cadastro$CEP <- factor(cadastro$CEP)

# mostra os tipos de variaveis
str(cadastro$CEP)

#mostrando a contagem de CEP
summary(cadastro$CEP)

summary(cadastro)

#acessando a coluna de logradouro do primeiro cliente
cadastro[1, 7]


hist(cadastro$RENDA_PRESUMIDA,
     xlab = 'Renda Presumida',
     ylab = 'Frequencia',
     main = 'Distribuicao da variavel Renda')

# box plot da variavel renda

boxplot(cadastro$RENDA_PRESUMIDA)

summary(cadastro$RENDA_PRESUMIDA)

#variaveis consideradas no boxplot
q1_renda <-quantile(cadastro$RENDA_PRESUMIDA, 0.25)
q3_renda <-quantile(cadastro$RENDA_PRESUMIDA, 0.75)
#q1_renda = 2068; q3_renda = 2924;


iqr = q3_renda - q1_renda; iqr 
limite_1 = q3_renda + (3 * iqr); limite_1
limite_2 = q3_renda + (1.5 * iqr); limite_2
limite_3 = q1_renda - (1.5 * iqr); limite_3
limite_4 = q1_renda - (3 * iqr); limite_4


#criar variavel outlier_renda

cadastro$outlier_renda <- ifelse(
    cadastro$RENDA_PRESUMIDA > limite_1, "ponto extremo",
    ifelse(cadastro$RENDA_PRESUMIDA > limite_2, "outlier",
           ifelse(cadastro$RENDA_PRESUMIDA > limite_3, "nao", "outlier")))

#tabela de frequencia
table(cadastro$outlier_renda)


#media, desvio padrao e coeficiente de variacao renda
media_renda = mean(cadastro$RENDA_PRESUMIDA)
desvio_padrao_renda = sd(cadastro$RENDA_PRESUMIDA);desvio_padrao_renda
#o quao distante da media esta do desvio padrao
coeficiente_variacao_renda = desvio_padrao_renda / media_renda
coeficiente_variacao_renda

#calculo media, desvio padra e coeficiente de variacao renda sem outlier
renda_sem_out <- cadastro[cadastro$outlier_renda == 'nao',]

media_renda_sem_out = mean(renda_sem_out$RENDA_PRESUMIDA)
media_renda_sem_out

desvio_padrao_renda_sem_out = sd(renda_sem_out$RENDA_PRESUMIDA)
desvio_padrao_renda_sem_out

#o quao distante da media esta do desvio padrao dispersao relativa
coeficiente_variacao_renda_sem_out = desvio_padrao_renda_sem_out / media_renda_sem_out
coeficiente_variacao_renda_sem_out


hist(renda_sem_out$RENDA_PRESUMIDA)
