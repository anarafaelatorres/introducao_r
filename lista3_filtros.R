# Filtro e vetores logicos ------------------------------------------------

# 1. use o vetor numeross abaixo para responder as questoes seguintes.
numeross <- -4:2

# (a) Escreva um c�digo que devolva apenas valores positivos do vetor numeross.
positivos<-numeross[numeross>0]

# (b) Escreva um c�digo que devolta apenas os valores pares
#     do vetor numeross.
#     Dica: o operador %% devolve o resto da divis�o entre dois n�meros
pares<-numeross[numeross%%2==0]


# (c) Filtre o vetor para que retorne apenas aqueles valores que quando
#     elevados a 2 s�o menores do que 4.
quadrado_menor_4<-numeross[numeross**2<4]

# 2. Use o data.frame airquality para responder �s quest�es abaixo
# (a) conte quantos NAs tem na coluna Solar.R. Dica: use '$', is.na() e sum()
summary(airquality$Solar.R)
qtde_na<-sum(is.na(airquality$Solar.R))
print(qtde_na)

# (b) filtre a tabela airquality com apenas linhas em que Solar.R � NA.
apenas_na<-airquality[is.na(airquality$Solar.R), ]

# (c) filtre a tabela airquality com apenas linhas em que Solar.R N�O � NA.
sem_na<-airquality[!is.na(airquality$Solar.R), ]

# (d) filtre a tabela airquality com apenas linhas em que Solar.R N�O � NA e Month � igual a 5.
base<-airquality[!is.na(airquality$Solar.R) & airquality$Month==5, ]
