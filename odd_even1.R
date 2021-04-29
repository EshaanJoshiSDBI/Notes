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