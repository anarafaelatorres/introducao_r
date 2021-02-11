# tabelas -------------------------------------------------------------

# 1. Use o data.frame airquality para responder às questões abaixo:

#install.packages("stringr")
library(datasets)
library(stringr)
airquality

# (a) quantas colunas airquality tem?
ncol(airquality)
# (b) quantas linhas airquality tem?
nrow(airquality)
# (c) o que a função head() retorna?
head(airquality)
#Resposta: Retorna as primeiras 6 linhas do data frame

# (d) quais são os nomes das colunas?
nomes_colunas<-names(airquality)
print(c("As colunas são: ", nomes_colunas))

# (e) qual é a classe da coluna Ozone? Dicas: class() e '$'
print(paste("A classe é: ", class(airquality$Ozone)))

# (f) o que o código str(airquality) retorna?
str(airquality)
print(paste("Retorna um resumo da estrutura da tabela.", "Suas colunas com suas respectivas classes e uma amostra dos dados de cada coluna possui."))

# (g) utilizando a resposta da (f), quais são os tipos de
#     cada coluna da tabela airquality?
for (i in 1:length(nomes_colunas)) {
  classe_coluna<-class(airquality[[nomes_colunas[i]]])
  print(paste0(nomes_colunas[i], ": ", classe_coluna))
  
} 



# [desafio] 2. Use o data.frame airquality para responder às questões abaixo:
# Vamos calcular o desvio padrão de Ozone sem usar a função sd().
# Dica: guarde os resultados de cada item em objetos para poderem ser usados depois.
# (a) tire a média da coluna Ozone. Dica: use mean(x, na.rm = TRUE).
media<-mean(airquality$Ozone, na.rm = TRUE)

# (b) subtraia da coluna Ozone a sua própria média (centralização).
erro<-airquality$Ozone - media

# (c) eleve o vetor ao quadrado.
erro_quadratico<-erro**2

# (d) tire a média do vetor.
varianca<-mean(erro_quadratico, na.rm = TRUE)

n<-nrow(subset.data.frame(airquality, !is.na(airquality$Ozone))[1])
varianca_amostral<-sum(erro_quadratico, na.rm = TRUE)/(n-1)


# (e) tire a raíz quadrada.
desvio_padrao<-varianca**(1/2)
desvio_padrao_amostral<-varianca_amostral**(1/2)

# (f) compare o resultado com sd(airquality$Ozone)
diferenca<-desvio_padrao - sd(airquality$Ozone, na.rm = TRUE)
diferenca_amostral<-desvio_padrao_amostral - sd(airquality$Ozone, na.rm = TRUE)

print("A função sd calcula o desvio padrão amostral.")

