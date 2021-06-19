# calculate tax
tax_calc = function(){
  salary=as.numeric(readline('Enter your salary '))
  if(salary<=20000)
  {
    tax = salary * 0.05
  }
  else
  {
   tax = salary * 0.1 
  }
  message('The tax you need to pay is ', tax)
}