# Exerc�cios - Introdu��o ao R

# objetos -----------------------------------------------------------------

# (a) Crie um vetor com o nome de tres frutas e guarde em um objeto chamado frutas.
  frutas<-c('banana','uva', 'laranja')

# (b) Use a fun��o length() para contar o tamanho do vetor. Certifique-se que retorna 3.
  length(frutas)

# (c) Use [] para retornar a primeira fruta do vetor.
  frutas[1]

# (d) Inspecione a sa�da de 'paste("eu gosto de", frutas)' e responda se o tamanho do vetor mudou.
  paste("eu gosto de ", frutas)
  length(paste("eu gosto de ", frutas))
  #' O tamanho do vetor n�o mudou

# vetores e funcoes ---------------------------------------------------------

# 1. Analise as duas linhas de c�digos abaixo:
c(1,2,3) - 1           # c�digo 1
c(1,2,3) - c(1,1,1)    # c�digo 2

# Os resultados s�o iguais? Porqu�?

  #'S�o iguais, no primeiro caso acontece a reciclagem,ou seja,  no primeiro caso o r ira subtrair de cada elemento do vetor 1 o numero 1
  #'j� no segundo caso esta subtraindo o primeiro elemnto do vetor 1 com o primeiro elemento do vetor 2
  #'mas como no segundo vetor todos os elementos s�o iguais a 1
  #'ent�o o codigo 1 e o codigo 2 retornam o mesmo resultado.