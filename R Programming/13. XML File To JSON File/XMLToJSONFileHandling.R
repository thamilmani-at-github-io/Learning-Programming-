getwd()
setwd("D:/ThamilMani/Learning-Programming-/R Programming/13. XML File To JSON File")
getwd()

install.packages("xml2")
install.packages("jsonlite")

library(xml2)
library(jsonlite)

doc <- read_xml("gender.xml")
records <- xml_find_all(doc, ".//Record")

data <- as.data.frame(
  t(sapply(records, function(node) {
    setNames(xml_text(xml_children(node)), xml_name(xml_children(node)))
  })),
  stringsAsFactors = FALSE
)

data$Emp_id <- as.integer(data$Emp_id)
data$Age    <- as.integer(data$Age)
data$Basic  <- as.integer(data$Basic)
data$Salary <- as.integer(data$Salary)
data$DA     <- as.integer(data$DA)

json_text <- toJSON(data, pretty = TRUE, auto_unbox = TRUE)
write(json_text, file = "gender.json")

data <- fromJSON("gender.json")
print(data)

retval <- subset(data, Gender == "Female")
print(retval)

retval <- subset(data, Gender == "Male")
print(retval)

retval <- subset(data, Age > 40 & Gender == "Male")
print(retval)

retval <- subset(data, Salary > 600)
print(retval)

retval <- subset(data, Salary > 600 & Basic > 300 & DA < 200)
print(retval)

retval <- data$Salary - (data$Basic + data$DA)
print(retval)
