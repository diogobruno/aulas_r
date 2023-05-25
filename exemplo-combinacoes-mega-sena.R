#limpa o ambiente
rm(list=ls())


# nao mostrar os resultados na notacao cientifica
options(scipen = TRUE)

n1 = factorial(60)
n1

n2 = factorial(54)
n3 = factorial(6)

combinacoes = n1 / (n2 * n3)
combinacoes


