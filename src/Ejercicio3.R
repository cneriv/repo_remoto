#Distribuciones normales de cada practica
TSCNormLaboreo=rnorm(200,0.1,0.13)
TSCNormFerti=rnorm(200,0.9,0.13)
TSCNormComp=rnorm(200,0.5,0.13)
# Vectores con las etiquetas de cada practica, es factor
Practlab=rep("Laboreo",200)
Practfer=rep("Fertilizacion",200)
Practcom=rep("Composta",200)
#Unir distribución y vector de laboreo en un DF
HojaLab=data.frame(Practlab,TSCNormLaboreo)
#Nombres de columnas
colnames(HojaLab)=c("Practica","Tasa")
#Unir distribución y vector de Fertilización en un DF
HojaFer=data.frame(Practfer,TSCNormFerti)
#Nombres de columnas
colnames(HojaFer)=c("Practica","Tasa")
#Unir distribución y vector de Composta en un DF
HojaCom=data.frame(Practcom,TSCNormComp)
#Nombres de columnas
colnames(HojaCom)=c("Practica","Tasa")
#unir todas las DF
resultados=rbind(HojaLab,HojaFer,HojaCom)
boxplot(resultados$Tasa~resultados$Practica)
