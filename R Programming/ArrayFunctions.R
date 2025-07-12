a <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
print(a)

a <- array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16),dim = c(4,4))
print(a)

a <- array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16),dim = c(3,3,3))
print(a)

v1 <- c(1,2,3,4,5,6,7,8,9)
v2 <- c(11,12,13,14,15,16,17,18,19)
v3 <- c(21,22,23,24,25,26,27,28,29)
print(v1+v2)
print(v2-v1)
print(v1*v2)
print(v1/v2)

v1 <- c(1,2,3,4,5,6,7,8,9)
v2 <- c(11,12,13,14,15,16,17,18,19)
v3 <- c(21,22,23,24,25,26,27,28,29)
column.names <- c("col 1","col 2","col 3")
row.names <- c("row 1","row 2","row 3")
Matrix.names <- c("Matrix 1","Matrix 2","Matrix 3")
result <- array(c(v1,v2,v3),dim = c(3,3,3),dimnames = list(row.names,column.names,Matrix.names))
print(result)
print(result[1,2,4])

#Manipulating array
V1<-c(5,9,3)
V2<-c(10,11,12,13,14,15)
array1<-array(c(V1,V2),dim = c(3,3))
print(array1)

#Calculations Across Array Element
print(array1)
result<-apply(array1,c(1),sum)
print(result)

print(array1)
result<-apply(array1,c(2),sum)
print(result)



