#ppois

a = ppois(16,lambda = 12,lower.tail = TRUE)
b = ppois(16,lambda = 12,lower.tail = FALSE)
print(a+b)

#dpois
n=3000 
p=0.001 
r=6
lambda = n*p
b<-exp(-lambda)*lambda^6/factorial(6)
print(b)

dpois(6,lambda)

k1<-dpois(0,lambda)
k2<-dpois(1,lambda)
k3<-dpois(2,lambda)
k4<-dpois(3,lambda)
k5<-dpois(4,lambda)
k6<-dpois(5,lambda)
c<-paste(k1," ",k2," ",k3," ",k4," ",k5," ",k6," ")
print(c)
print(k1+k2+k3+k4+k5+k6)


ppois(3,lambda,lower.tail = TRUE)
ppois(3,lambda,lower.tail = FALSE)

lambda <- 12
samples <- rpois(10, lambda)
print(samples)


