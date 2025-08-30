
h<-c(7,8,9,10,11)
#png(file="bar")
barplot(h)
months <- c("Mar", "Apr", "May", "Jun", "Jul")
revenue <- c(7, 8, 9, 10, 11)

barplot(revenue,
        names.arg = months,
        xlab = "Month",
        ylab = "Revenue",
        col = "blue",
        main = "Revenue Chart",
        border = "red")


#dev.off()