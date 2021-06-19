x = c(8,4,3)
y = c(2,3,4)
  for( i in x)
  {
    for(ii in y)
    {
      a = matrix(i%*%ii)
      print(a)
    }
  }

x = c(8,4,3)
y = c(2,3,4)
tcrossprod(x,y)
