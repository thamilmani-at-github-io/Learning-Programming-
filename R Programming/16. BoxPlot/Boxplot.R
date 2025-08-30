x <- c(10,20,30,40,50)
summary(x)

boxplot(x,horizontal = FALSE)
boxplot(x,horizontal = TRUE)

x<- c(10,11,14,15,120,12,34,54,65,24,67,230)
boxplot(x,horizontal = FALSE)
print(mean(x))

mtcars
input <- mtcars[, c("mpg", "cyl")]
print(input)

boxplot(mpg~cyl,data=mtcars,xlab = "Number of Cylinders ",ylab = "Milege Data",main = "Milege Data")
boxplot(hp~cyl,data=mtcars,xlab = "Number of Cylinders ",ylab = "Horse Power",main = "Power Data")