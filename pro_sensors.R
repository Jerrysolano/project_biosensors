library("readxl")
library("ggplot2")
library("statsr")
Data <- read_excel("biosensors_pro.xlsx")
Data$Rt <- as.factor(Data$Rt)

m1 <- aov(A450 ~ Rt, data=Data)
summary(m1)
#0.00405 por tanto continuo con tukey
TukeyHSD(m1)
boxplot(A450 ~ Rt, data=Data)


#Rt70
Data_Rt70 = subset(Data, Rt=="70")
m1_Rt70 <- aov(A450 ~ t, data=Data_Rt70)
anova(m1_Rt70)
boxplot(A450 ~ t, data=Data_Rt70)
#0.178 fallo en rechazar la hipotesis nula