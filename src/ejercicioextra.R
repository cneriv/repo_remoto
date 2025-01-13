BD=read.csv("CONTRERAS.csv",
header=T,
encoding="UTF-8",
check.names=F) #importar los datos
BD
str(BD) #verificar la estructura
names(BD) #verificar los nombres de variables
#Crear una nueva variable llamada Tipo a partir de la variable DICTAMEN usando la siguiente tabla de relación:
BD$Tipo=ifelse (BD$DICTAMEN == "ATARJEA OBSTRUIDA","Obstruction",
                ifelse(BD$DICTAMEN == "COLADERA OBSTRUIDA","Obstruction",
                       ifelse(BD$DICTAMEN == "FALTA DE INFRAESTRUCTURA","Sewage overflow",
                              ifelse(BD$DICTAMEN == "INSUFICIENCIA DE ATARJEA Y COLECTOR","Sewage overflow",
                                     ifelse(BD$DICTAMEN == "INSUFICIENCIA DE GRIETA","Sewage overflow",
                                            ifelse(BD$DICTAMEN == "RUPTURA DE TUBO DE AGUA POTABLE","Breaking off",
                                                   ifelse(BD$DICTAMEN == "INEXISTENTE AL MOMENTO DE LA INSPECCION [NO SE APRECIAN DIMENSIONES]","Lacking Info",
                                                          ifelse(BD$DICTAMEN == "INEXISTENTE AL MOMENTO DE LA INSPECCION","Lacking Info",
                                                                 ifelse(BD$DICTAMEN == "NO SE OPERO CARCAMO DE BOMBEO","Pump Failure",
                                                                        ifelse(BD$DICTAMEN == "HUNDIMIENTO DE CARPETA ASFALTICA","Sinking","Otros"
                                                                 ))))))))))
#4.	Crear dos subgrupos.  El primero contendrá la información para los años 2007, 2008 y 2009. El segundo los años 2010,2011,2012, 2013 y 2014.
G1<-subset(BD,Año%in%c(2007,2008,2009))
G1
G2<-subset(BD,Año%in%c(2010,2011,2012, 2013,2014))
G2
#Generar una nueva variable llamada Frecuencia (nota: cada reporte es un evento, es decir, una frecuencia).


#Gráfica para la frecuencia de Año en el grupo 1
barplot(FAG1$Frecuencia, 
        names.arg = FAG1$Año, 
        main = "Frecuencia por Año", 
        xlab = "Año", 
        ylab = "Frecuencia")
#Gráfica para la frecuencia de Año en el grupo 2
barplot(FAG2$Frecuencia, 
        names.arg = FAG1$Año, 
        main = "Frecuencia por Año", 
        xlab = "Año", 
        ylab = "Frecuencia")
#Gráfica para la frecuencia de Año en el grupo 2
barplot(FAG2$Frecuencia, 
        names.arg = FAG2$Año, 
        main = "Frecuencia por Año", 
        xlab = "Año", 
        ylab = "Frecuencia")
#Gráfica para la frecuencia de Tipo en el grupo 1
barplot(FTG1$Frecuencia, 
        names.arg = FTG1$Tipo, 
        main = "Frecuencia por Tipo", 
        xlab = "Tipo", 
        ylab = "Frecuencia")
#Gráfica para la frecuencia de Tipo en el grupo 2
barplot(FTG2$Frecuencia, 
        names.arg = FTG2$Tipo, 
        main = "Frecuencia por Tipo", 
        xlab = "Tipo", 
        ylab = "Frecuencia")