a=as.integer(readline(prompt = "Enter the Number to Generate Perfect Number : "))
print(a)
n = 2
while(n<=a){
  m = 2
  sum = 1
  while(m < n){
    if((n %% m)==0){
      sum = sum + m
    }
    m = m + 1
  }
  if(sum == m){
    print(paste(sum," is perfect Number"))
  }
  n = n + 1
}

