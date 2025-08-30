getwd()
setwd("D:/ThamilMani/Learning-Programming-/R Programming/12. XLSX File Handling")
getwd()

install.packages("readxl")
library(readxl)

#Tools -> Install Packages

data <- read_excel("gender.xlsx")

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
