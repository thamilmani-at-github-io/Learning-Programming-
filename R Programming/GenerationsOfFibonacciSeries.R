
n=as.integer(readline(prompt = "Enter the Numbers for Generate Fibonacci series : "))
a=0
b=1
fib<-numeric(n)
fib[1]=a
fib[2]=b
for(i in 3:n){
  c = fib[i-1]+fib[i-2]
  print(c)
  fib[i]<-c
}

for(i in fib){
  print(i)
}
