factorials = function(i)
{
  if(i <= 1)
  {
    return (1)
  }
  else
  {
    return(i * factorials(i - 1))
  }
}
inp = as.numeric(readline('Enter the number '))
factorials(inp)
