ej_4=read.csv("AreaBasal.csv",header=T) #para convocar los datos de trabajo
str(ej_4) #estructura, de los datos
head(ej_4) #header de los datos
DAP=c(2.3,4.5,5.5,6.0,6.4,6.8,7.7,7.9,8.1,9.0) #vector de diámetros promedio de cada clase diametral DAP 
ABT<- 3.14*(DAP^2/40000) #ecuación para calcular el área basal de un árbol promedio de cada clase diametral
 AP1=ABT*ej_4[1,] #multiplicar la ABT por los individuos
 ABTP1=sum(AP1)#sumar toda el área basal de la parcela 1
 ABTP11=round(sum(AP1),digits=2)#redondear hacia abajo
ABTPT=numeric(length(DAP)) #vector vacío con la misma longitud que ABT
for (i in 1:length(ABT)){
ABTPT[i] <- round(sum(ABT*ej_4[i,]),digits=2)
ABTPT
} #loop que multiplica la ABT de cada clase (ABT) por la cantidad de individuos por clase de cada parcela (ej_4[b,]), sume el área basal de cada parcela(sum(ABT*ej_4)) y redondea (round(sum),digits)
ABTT=sum(ABTPT)
print(ABTT)