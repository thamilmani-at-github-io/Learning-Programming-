a=as.integer(readline(prompt = "Enter the Number to Generate Prime Numbers : "))
print(a)
m = 2
while( m <= a){
  flag = 1
  i = 2 
  while( i < m){
    if( m %% i==0){
      flag = 0
      break
    }
    i = i + 1
  }
  if(flag == 1){
    print(paste(m," is the prime number "))
  }
  m = m + 1
}