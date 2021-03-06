# 1. Considere o vetor booleano abaixo:
dolar_subiu <- c(TRUE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE)

# Este vetor tem informa��o de uma semana (7 dias) indicando se o dolar subiu (TRUE)
# (ou n�o subiu - FALSE) no respectivo dia. Interprete os n�meros abaixo:

# (a) length(dolar_subiu)
length(dolar_subiu)
#Vetor com 7 elementos

# (b) dolar_subiu[2]  (ps: a semana come�a no domingo)
dolar_subiu[2]
#Na ter�a o dolar subiu

# (c) sum(dolar_subiu)
sum(dolar_subiu)
#O dolar subiu em 4 dos 7 dias da semana

# (d) mean(dolar_subiu)
mean(dolar_subiu)
#Embora n�o fa�a muito sentido extrair a m�dia nesse caso, 
#o resultado dessa conta indica 
#o percentual de dias em que o dolar subiu


# Agora observe a sa�da de as.numeric(dolar_subiu). O que o R fez?
as.numeric(dolar_subiu)
#converte para 1 os casos que s�o verdadeiros e 0 os casos que s�o falsos