# 1. Importar los datos
BD = read.csv("Urea.csv",
            header=T)
# Verificar estructura
str(BD)
BD
# 2. Gráfica de dispersión con línea de ajuste de Progesterona ~ Urea, sin tomar en cuenta el nivel de dosis
g1 = plot(BD$Urea, BD$Progesterona,
     main="Gráfica 1", xlab="Progesterona (s/u) ", ylab="Urea (s/u) ",pch=16)
abline(lm(BD$Urea~BD$Urea), col="red")

# Obtener la media de la variable Urea para cada nivel de dosis y hacer una grafica de barras.
tprom = aggregate(BD$Urea, list(BD$Dosis), FUN=mean)
names(tprom)
names(tprom) = c("Dosis","Promedio de Urea")
tprom
conteo = table(tprom$"Promedio de Urea")
barplot(conteo,names.arg=c("1","2","3"),xlab="Dosis",ylab="Promedio de Urea")

# Hacer una gráfica de barras en ggplot de la media de progesterona (media ±95% intervalo de confianza) para cada nivel de dosis.
library(ggplot2)


# Hacer una grafica de dispersión Progesterona ~ Urea, tomando en cuenta el nivel de dosis- investigar en línea.


# Otra opción para el código de la gráfica 1
g2=plot(BD$Progesterona~BD$Urea,
     main="G2", xlab="Progesterona (s/u) ", ylab="Urea (s/u) ",pch=16)
