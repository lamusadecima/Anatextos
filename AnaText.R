#################################################
##                                             ##
##  ANÁLISIS DE TEXTOS Y ESTILOMETRÍA USANDO R ##
##                                             ##
#################################################


# Primero establecemos el directorio de trabajo
# Si tienes un Mac y has guardado la carpeta "novela" en el escritorio:
setwd("Desktop/novela")
# Si tienes Windows y has guardado la carpeta en C:
setwd("C:/novela")

# A continuación, llamamos al paquete stylo

library(stylo)

# Para funciones básicas de Estilometría (cluster analysis, consensus tree, PCA...)

stylo()

# Para métodos supervisados y clasificación
setwd("classify")

classify()
results = classify(cv.folds=10)
summary(results)
results$cross.validation.summary
mean(results$cross.validation.summary) #percentage of success

# Para PCA
setwd("PCA")
stylo()

# Para Rolling Classify
setwd("Rolling")
rolling.classify(write.png.file = TRUE, classification.method = "svm", mfw=100, training.set.sampling = "normal.sampling", slice.size = 1000, slice.overlap = 500)
