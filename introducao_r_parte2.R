
#remover todos os objetos
rm(list = ls())

# matriz

m1 <- array(1:20, dim = c(4,5)); m1

# selecionar a primeira linha da matriz
m1[1,]

# selecionar a primeira coluna da matriz
m1[,1]

# selecionar o elemento da segunda linha e da segunda coluna
# 6
m1[2, 2]

# matriz 2

m2 <- array(c(1:4,1:4), dim = c(4,2)); m2


# matriz1 + matriz2

m3 <- cbind(m1, m2); m3


# matriz 4

m4 <- array(c(3:3, 3:3), dim = c(2,2)); m4

# juntar a m2 e m4 rbind precisa ter o mesmo numero de colunas

m6 <- rbind(m2, m4); m6

