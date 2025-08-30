din<- array(c("E","E","W","R","T","W","R","T"))
len<-length(din)
i=1
a=character(0)
while(i<=len){
  if(!(din[i] %in% a)){
    a <- c(a, din[i])
  }
  i<-i+1
}
print(a)
i=1
a=character(0)

