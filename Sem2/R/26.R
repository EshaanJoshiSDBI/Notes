# Even or odd number
Evenodd = function(){
  x = as.numeric(readline('Enter the number to be checked '))
  r = x%%2
  if(r == 0)
  {
    print('The number is an even number')
  } 
  else
  {
    print('The number is an odd number')
  }
}
Evenodd()

x = c(4,7,6,3,1,8,9,2)
func1 = function()
{
  for(i in x)
  {
    if(i %% 2 == 0)
    {
      print(i^2)
    }
    else
    {
      print(i^3)
    }
  }
}
x = c(4,7,6,3,1,8,9,2)
for(i in x)
{
  if(i %% 2 == 0)
  {
    a = append(a,i^2,after = length(a))
  }
  else if(i == 1)
  {
    next
  }
  else
  {
    a = append(a,i^3,after = length(a))
  }
}
print(a)
