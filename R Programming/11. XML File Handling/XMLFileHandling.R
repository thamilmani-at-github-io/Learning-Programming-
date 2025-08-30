getwd()
setwd("D:/ThamilMani/Learning-Programming-/R Programming/11. XML File Handling")
getwd()

install.packages("xml2")
install.packages("XML")

#Tools -> Install Packages

library(xml2)
library(XML)

data_xml <- xmlParse("gender.xml")

data <- xmlToDataFrame(data_xml)

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
