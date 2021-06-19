func1 = function()
{
  continue = TRUE
a = as.numeric(readline('Enter the first number '))
c = append(c,a,after = length(c))
while(continue)
{
  reply = readline('Do you want to put another number ')
  if(toupper(reply) == 'Y')
  {
    b = as.numeric(readline('enter the next number '))
    c = append(c,b,after = length(c))
  }
  else
  {
    continue = FALSE 
    print(c)
  }
}
}