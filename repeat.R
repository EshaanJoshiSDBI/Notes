square = function(){
  x = c(3,1,0,4,7,6,5)
  for (ctr in x){
    if (ctr==1 | ctr == 0)
    {
      next
    } 
    else 
    {
      print(ctr**2)
    }
  }
}
###################
x = 10
repeat
{
  print(x^2)
  x = x - 1
  if(x == 5)
  {
    break
  }
  print('Still within loop')
}
print('now out of the loop')