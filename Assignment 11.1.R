x<- read.csv("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\bankdata.csv")
View(x)
x[x==""]=NA
View(x)
library(naniar)
vis_miss(x)
y=na.omit(x)
View(y)
barplot(prop.table(table(y$job)))
z<-chisq.test(y$job,y$marital)
z
#Pearson's Chi-squared test

data:  y$job and y$marital
X-squared = 2632.7, df = 20, p-value < 2.2e-16

chisq.test(y$job,y$education)
#Pearson's Chi-squared test

data:  y$job and y$education
X-squared = 27170, df = 60, p-value < 2.2e-16