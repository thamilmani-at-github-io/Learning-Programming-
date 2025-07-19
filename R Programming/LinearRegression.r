x=c(1,2,3,4,5,6,7)
y=c(10,20,30,40,50,60,70)

model = (lm(y~x))
predict=data.frame(x=8)
print(predict(model,predict))
plot(x,y,main="If X Increase then Y also Increase",abline(lm(y~x)),col="Red")

# This is For Y on X
x <- c(1,2,3,4,5,6,7)
x_bar <- mean(x)
Ex <- sum(x)
xs <- x * x 
print(xs)
Exs <- sum(xs)

y <- c(10,20,30,40,50,60,70)
Ey <- sum(y)
y_bar <- mean(y)
ys <- y * y
Eys <- sum(ys)

n <- length(x)

xy <- x * y
Exy <- sum(xy)

# Correct formula for byx:
numerator <- (n * Exy - Ex * Ey)
denominator <- (n * Exs - Ex^2)
byx <- numerator / denominator

print(byx)

lhs <- y - y_bar
rhs <- byx * (x - x_bar)

print(lhs)
print(rhs)

y.x <- rhs
print(y.x)

# This is For X on Y

x <- c(1,2,3,4,5,6,7)
x_bar <- mean(x)
Ex <- sum(x)
xs <- x * x
Exs <- sum(xs)

y <- c(10,20,30,40,50,60,70)
Ey <- sum(y)
y_bar <- mean(y)
ys <- y * y
Eys <- sum(ys)

n <- length(x)

xy <- x * y
Exy <- sum(xy)

# Regression coefficient bxy (X on Y)
numerator <- (n * Exy - Ex * Ey)
denominator <- (n * Eys - Ey^2)
bxy <- numerator / denominator

print(bxy)

# Deviation form for X on Y
lhs <- x - x_bar
rhs <- bxy * (y - y_bar)

print(lhs)
print(rhs)

x.y <- rhs
print(x.y)

x=c(2005, 2010, 2015, 2020, 2023, 2026, 2029)
y=c(36000, 38000, 40000, 38000, 42000, 44000, 43000)

model = (lm(y~x))
predict=data.frame(x=2025)
print(predict(model,predict))

plot(x,y,main="Sales Based on Years VS Profit",abline(model),col="Red")






