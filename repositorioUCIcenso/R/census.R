base <- read.csv('census.csv')
base$X <- NULL

#transformar categóricos em discretos
#sexo (feminino = 0  e masculino = 1)

#quantidade de cada um deles
table(base$sex)
unique(base$sex)

base$sex <- factor(base$sex, levels = c(' Female', ' Male'), labels = c(0, 1))

#quantos NA existem na coluna?
base[is.na(base$sex)]


#divisao entre treinamento e teste
install.packages('caTools')
library('caTools')
set.seed(1)
divisao <- sample.split(base$income, SplitRatio = 0.85)
base_treinamento <- subset(base, divisao == TRUE)
base_teste <- subset(base, divisao == FALSE)
