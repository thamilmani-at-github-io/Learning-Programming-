# Build-In Functions
v<-c(100,200,122,300,299)
print(sum(v))
print(min(v))
print(max(v))
print(mean(v))
print(seq(10,15))
print(seq(12:15))

# User-Defined Functions : 
new.function<-function(){
  print("Hello world");
}
new.function()

new.function<-function(){
  for(i in 1:5){
    print(i)
  }
}
new.function()


new.Mani<-function(a){
  for(i in 1:a){
    print(i)
  }
}
new.Mani(10)

new.defaultparam = function(a,b){
  print(a)
  print(b)
}
new.defaultparam(10,20)

new.defaultparam = function(a=5,b){
  print(a)
  print(b)
}
new.defaultparam(,20)
new.defaultparam(11,20)
new.defaultparam(b=11,a=20)
new.defaultparam(b=20,)

new.bodmas = function(a,b,c){
  print(a+b*c)
}
new.bodmas(5,11,12)
new.bodmas(11,5,12)
