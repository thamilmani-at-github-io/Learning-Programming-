x=c(2,3,4,5,4,6)

#Using built Function
print(sd(x))

#Using Formula
x_mean = mean(x)
print(x_mean)

xi=x-x_mean
print(xi)

x_bar=xi*xi
print(x_bar)

output=sqrt(x_bar/sum(x))
print(output)

