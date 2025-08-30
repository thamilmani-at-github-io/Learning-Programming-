x<-4
y<-dbinom(x,10,0.5)
print(y)


#dbinom
x<-0
y0<-dbinom(x,4,0.5)
print(y0)

x<-1
y1<-dbinom(x,4,0.5)
print(y1)

x<-2
y2<-dbinom(x,4,0.5)
print(y2)

x<-3
y3<-dbinom(x,4,0.5)
print(y3)

x<-4
y4<-dbinom(x,4,0.5)
print(y4)

y = y0+y1+y2+y3+y4
print(y)

#pbinom

x1 <- 2
y1 <- pbinom(x1,4,0.5)
print(y1)

x2 <- 3
y2 <- pbinom(x2,4,0.5)
print(y2)

y = y2-y1
print(y)

#qbinom

x <- qbinom(0.375,4,0.5)
print(x)

#rbinom

x<- rbinom(8,150,0.4)
print(x)

print(dbinom(0,size = 12,prob = 0.2)+
        dbinom(1,size = 12,prob = 0.2)+
        dbinom(2,size = 12,prob = 0.2)+
        dbinom(3,size = 12,prob = 0.2)+
        dbinom(4,size = 12,prob = 0.2))

print(pbinom(4,12,0.2))