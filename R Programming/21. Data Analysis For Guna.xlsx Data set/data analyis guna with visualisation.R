getwd()
setwd("D:/ThamilMani/Learning-Programming-/R Programming/21. Data Analysis For Guna.xlsx Data set")
guna = read.csv("guna.csv")
head(guna)
summary(guna)

hist(table(guna$Apptitude),xlab = "Aptitude",col = "Green",border = "red",xlim = c(0,100),ylim = c(0,30),breaks = 5)

#bar plot
barplot(table(guna$gunas),col = "green")
barplot(table(guna$Attitude),col = "green")
barplot(table(guna$Gender),col = "green")
barplot(table(guna$Apptitude),col = "green")

#box plot
boxplot(guna$Apptitude,col = c("green"))
boxplot(guna$Attitude,col = c("green"))

hist(table(guna$Apptitude),xlab = "Aptitude",col = "green",border = "red",xlim = c(0,100),ylim = c(0,30),breaks = 5)
hist(table(guna$gunas),xlab = "gunas",col = "green",border = "red",xlim = c(0,100),ylim = c(0,30),breaks = 5)
hist(table(guna$Attitude),xlab = "Attitude",col = "green",border = "red",xlim = c(0,100),ylim = c(0,30),breaks = 10)

#Scatter plot
plot(x=guna$Apptitude,y=guna$Attitude,xlab = "Apptitude",ylab = "Attitude",main = "Apptitude vs Attitude",
     col=c("red","green"))
legend("bottomright",pch = 5,col = c("red","green"),legend = c("Aptitude","Attitude"))

#pie chart
d=as.data.frame(table(guna$gunas))
print(d)
pie(d$Freq,c("Rajasic","Sattvic","Tamasic"))
pie(d$Freq,d$Var1)