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