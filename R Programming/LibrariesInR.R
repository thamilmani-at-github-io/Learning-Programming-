library(MASS)
painters
Pima.te
Pima.tr
data()

x=Pima.te
factor.x=factor(Pima.te$bp)
print(factor.x)
nrow(x)

y=Pima.tr
factor.y = factor(Pima.tr$bp)
print(factor.y)
nrow(y)

library(MASS)