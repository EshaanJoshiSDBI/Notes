x = c(4,2,3,5,7)
sum_ = function(a = 2, b = 3)
{
  c = a*2 + b
  print(c)
}
sum__ = function()
{
  a = as.numeric(readline('Enter the first number (to be multiplied by two) '))
  b = as.numeric(readline('Enter the second number '))
  c = a*2 + b
  print(c)
}
expo = function(x,y = 2)
{
  z = x^y
  return(z)
}
expo_=function(y=2,x)
{
  z = x^y
  print(z)
}
simple_interest = function(principal,term = 20,rate = 8)
{
  amount = principal + ((principal * term * rate) / 100)
  print(amount)
}
myfunc = function(x,y,z)
{
  s = z(x,y)
  print(s)
}
greet = function(name)
{
  message('Hello ', name, ', good afternoon')
}
expo = function(x,y)
{ 
  z1 = x**y
  z2 = x*y
  print(z1)
  print(z2)
  return(z1) 
}
expo = function(x,y){
  z1 = x**y
  return(z1)
}

my_func = function(a,b){
  c = expo(a,2)
  d = c+2*b
  print(d)
}
stu_names = c("Ishika","Vansh","Eshaan","Aditi")
course = c("R","Python","Python","R")
marks = c(76,89,59,68)
stu_database = data.frame(Name=stu_names,Subject=course, Marks=marks)
rownames(stu_temp) = seq(length=nrow(stu_temp))
stu_temp = subset(stu_database, stu_database$Subject == 'R' | stu_database$Marks > 75)
stu_R = subset(stu_database, stu_database$Subject == 'R')
