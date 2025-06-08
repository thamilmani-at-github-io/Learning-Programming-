getwd()
setwd("D:/ThamilMani/java/Learning-Programming-/R Programming")
getwd()

data <- read.csv("gender.csv")
print(data)

retval <- subset(data,data$Gender=="Female")
print(retval)

retval <- subset(data,data$Gender=="Male")
print(retval)

retval <- subset(data,data$Age>40 & data$Gender=="Male")
print(retval)

retval <- subset(data,data$Salary>600)
print(retval)

retval <- subset(data,data$Salary>600 & data$Basic>300 & data$DA<200)
print(retval)

retval <- data$Salary - (data$Basic + data$DA)
print(retval)
