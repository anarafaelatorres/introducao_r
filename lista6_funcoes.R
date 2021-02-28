# Funções proprias ---------------------------------------------------------

# 1. Crie uma função que receba um número e retorne o quadrado deste
# número.

quadrado<-function(numero){
  resultado<-numero^2
  print(paste0("O quadrado de ", numero, " é: ", resultado))
}

#Exemplos de uso
quadrado(2)
vetor<-c(1,2,3,4,5)
quadrado(vetor)


# 2. Crie uma função que receba dois valores (numéricos) e devolva o maior deles. 
# - A função deve ter exatamente dois argumentos. 
# - Você pode escolher qualquer nome para a função e para os argumentos.

maximo<-function(numero_1, numero_2=NULL){
  resultado<-max(numero_1, numero_2)
  print(paste0("O maior valor do conjunto é: ", resultado))
}

#Exemplos de uso
vetor_1<-c(1,2,3,4,5)
vetor_2<-c(10,11,10,22)
maximo(vetor_1, vetor_2)
maximo(vetor)
maximo(vetor_2)


# [desafio] 3. Crie uma função que recebe 2 números x e y
# e devolve a raiz quadrada da soma desses números.
# Depois teste a função para valores (x=2, y=3).
# Dica: sqrt() é a função para raiz quadrada.


raiz <- function(x, y, indice = 2) {
  resultado <- round((x + y) ^ (1 / indice), 2)
  mensagem <-
    paste0("a raiz de índice: ",
           indice,
           " da soma dos números ",
           x,
           " e ",
           y,
           " é de: ",
           resultado)
  print(mensagem)
}


#Exemplos de aplicação
raiz(x=2, y=3)
raiz(x=2, y=3, indice = 3)



# Funções e controle de fluxo ----------------------------

# 1.  O pai de Julio pediu para ele ir ao mercado. 
# Ele pediu para o garoto comprar feijão e, se 
# o quilo do arroz estiver abaixo de 10 reais,
# trazer também um quilo de arroz.

# Se o quilo do arroz estivesse custando 12 reais,
# o cenário acima poderia ser expresso na linguagem
# R, pelo código abaixo.

preco_kg_arroz <- 12

if (preco_kg_arroz < 10) {
  "Julio comprou arroz e feijão."
} else {
  "Julio comprou apenas feijão."
}

# Nesse caso, o "resultado" é Julio ter comprado apenas
# feijão.

# Podemos generalizar esse código para testarmos 
# com vários preços de arroz. Para isso, vamos 
# transformá-lo em uma função

o_que_julio_comprou <- function(preco_kg_arroz) {
  if (preco_kg_arroz < 10) {
    "Julio comprou arroz e feijão."
  } else {
    "Julio comprou apenas feijão."
  }
}

o_que_julio_comprou(8)
o_que_julio_comprou(12)

# Agora podemos testar o nosso cenário
# qualquer valor do quilo do arroz que quisermos.

# Modifique a função "o_que_julio_comprou" para
# representar os seguintes novos cenários:

# a) Julio deve comprar feijão e, se o quilo
# do arroz estiver abaixo de 12 reais, comprar
# arroz.

o_que_julio_comprou <- function(preco_kg_arroz) {
  if (preco_kg_arroz < 12) {
    "Julio comprou feijão e arroz."
  } else {
    "Julio comprou feijão."
  }
}

o_que_julio_comprou(8)
o_que_julio_comprou(12)


# b) Julio deve comprar arroz e feijão, mas
# apenas se o quilo do arroz estiver abaixo 
# de 10 reais. Caso contrário, não deve comprar
# nada.


o_que_julio_comprou <- function(preco_kg_arroz) {
  if (preco_kg_arroz < 10) {
    "Julio comprou arroz e feijão."
  } else {
    "Julio não comprou nada."
  }
}

o_que_julio_comprou(8)
o_que_julio_comprou(12)


# c) Julio deve comprar arroz e feijão se o quilo
# do arroz estiver menor de 10 reais; apenas 
# feijão se o quilo do arroz estiver entre 10 
# (inclusive) e 12 reais; e não deve comprar nada
# se o quilo do arroz estiver 12 reais ou mais 
# caro.
o_que_julio_comprou <- function(preco_kg_arroz) {
  if (preco_kg_arroz < 10) {
    "Julio comprou arroz e feijão."
  } else if(preco_kg_arroz>=10 & preco_kg_arroz < 12) {
    "Julio comprou apenas feijão."
  } else{
    "Julio não comprou nada."
  }
}

o_que_julio_comprou(8)
o_que_julio_comprou(10)
o_que_julio_comprou(12)


# d) Julio deve comprar arroz e feijão se o quilo
# do arroz estiver abaixo de 10 reais E se o quilo
# do feijão estiver abaixo de 8 reais. Caso contrário,
# ele não deve comprar nada.
# DICA: você deve insirir outro argumento (preco_kg_feijao)
# na função o_que_julio_comprou.

o_que_julio_comprou <- function(preco_kg_arroz, preco_kg_feijao) {
  if (preco_kg_arroz < 10 & preco_kg_feijao < 8) {
    "Julio comprou arroz e feijão."
  } else {
    "Julio não comprou nada."
  }
}

o_que_julio_comprou(8, 5)
o_que_julio_comprou(12, 5)
