# Exercícios - Introdução ao R

# objetos -----------------------------------------------------------------

# (a) Crie um vetor com o nome de tres frutas e guarde em um objeto chamado frutas.
  frutas<-c('banana','uva', 'laranja')

# (b) Use a função length() para contar o tamanho do vetor. Certifique-se que retorna 3.
  length(frutas)

# (c) Use [] para retornar a primeira fruta do vetor.
  frutas[1]

# (d) Inspecione a saída de 'paste("eu gosto de", frutas)' e responda se o tamanho do vetor mudou.
  paste("eu gosto de ", frutas)
  length(paste("eu gosto de ", frutas))
  #' O tamanho do vetor não mudou

# vetores e funcoes ---------------------------------------------------------

# 1. Analise as duas linhas de códigos abaixo:
c(1,2,3) - 1           # código 1
c(1,2,3) - c(1,1,1)    # código 2

# Os resultados são iguais? Porquê?

  #'São iguais, no primeiro caso acontece a reciclagem,ou seja,  no primeiro caso o r ira subtrair de cada elemento do vetor 1 o numero 1
  #'já no segundo caso esta subtraindo o primeiro elemnto do vetor 1 com o primeiro elemento do vetor 2
  #'mas como no segundo vetor todos os elementos são iguais a 1
  #'então o codigo 1 e o codigo 2 retornam o mesmo resultado.