2*2

# novo vetor

x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
#ou 
x = c(10.4, 5.6, 3.1, 6.4, 21.7)

1/x

x**2

a <- sum(x)
a

y = 2*x^2 + 2*x +1
y

# numero de observacoes
length(y)
length(x)

max(y)
max(x)

#concatenar e mostrar o resultado
z = c(x, y); z
# ou
z <- c(x, y); z

length(z)

# remover um objeto
rm(a)

#remover todos os objetos
rm(list = ls())

ls()

(10 > 15) == FALSE

x <- c(1:10); x

#media
media_x = mean(x); media_x

#desvio padrao
dp_x = sd(x); dp_x

#vetor com missing
x <- c(1:10,NA); x

x[10:11]

#media com dado faltante
media_x = mean(x, na.rm = TRUE); media_x

dp_x = sd(x, na.rm = TRUE); dp_x

min_x = min(x, na.rm = TRUE); min_x
max_x = max(x, na.rm = TRUE); max_x

func_media <- function(vetor) {
  vetor = na.exclude(vetor)
  soma <- sum(vetor)
  nobs <- length(vetor)
  media <- soma / nobs
  return(media)
}

func_media(x)

func_dp <- function(vetor) {
  vetor = na.exclude(vetor)
  soma <- sum(vetor) 
  nobs <- length(vetor)
  media = soma / nobs
  
  sum_diff = sum((vetor - media)^2)
  retorno = sqrt(sum_diff / (nobs-1))
  return(retorno)
}

func_dp(x)

