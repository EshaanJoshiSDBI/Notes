facto=function(n)
{
  factorials = 1
  if((n==0)|(n==1))
  {
    factorials = 1
  }
  else
  {
    for( i in 1:n)
    {
      factorials = factorials * i
    }
  }
  return(factorials)
}