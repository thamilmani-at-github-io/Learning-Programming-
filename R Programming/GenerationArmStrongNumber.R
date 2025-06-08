n=as.integer(readline(prompt = "Enter the ArmStrong Number : "))
print(n)
m=1
while(m<=n){
  sum=0
  v=m
  u=m
  while(u>0){
    rem = u %% 10
    sum = sum + (rem*rem*rem)
    u = u%/%10
  }
  if(sum==v){
    print(paste(sum," Is ArmStrong Number"))
  }
  m=m+1
}