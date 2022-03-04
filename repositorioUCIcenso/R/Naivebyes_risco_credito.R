base <- read.csv('risco_credito.csv')
base <- NULL
base_teste <- NULL
divisao <- NULL
base_treinamento <- NULL
install.packages('e1071')
classificador <- naiveBayes(x <- base[-5], y <- base$risco)
