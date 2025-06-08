
getwd()
setwd("D:/ThamilMani/java/Learning-Programming-/R Programming")
getwd()

data=read.csv("Book1.csv")

print(data)

res_age25=subset(data,AGE>25)
print(res_age25)

res_agebetween=subset(data,AGE>10 & AGE<40)
print(res_agebetween)

res_agegender=subset(data,AGE>25 & GENDER == "girl")
print(res_agegender)

res_agegender=subset(data,AGE>20 & AGE<40 & GENDER == "male")
print(res_agegender)

res_a=subset(data,grepl( "^a",NAME,ignore.case=TRUE))
print(res_a)