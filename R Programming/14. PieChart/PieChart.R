
months <- c("Mar", "Apr", "May", "Jun", "Jul")
revenue <- c(7, 8, 9, 10, 11)


pie(revenue,
    labels = paste(months, "\n", revenue, " units"),
    main = "Monthly Revenue Distribution",
    col = rainbow(length(months)),
    border = "white")
