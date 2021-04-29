x = c(8,4,3)
y = c(2,3,4)
a = c()
for(i in x)
{
  for(ii in y)
  {
    a = c(a,i*ii)
    #a = matrix(i%*%ii)
  }
}
matrix1 = as.matrix(a,ncol=3,byrow = TRUE)
matrix1 = matrix(matrix1,nrow=3,byrow = TRUE)
