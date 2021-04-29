
mtcars = read_excel('mtcars.xlsx')
func1 = function(mileage)
{
  temp = mtcars$model[which(mtcars$mpg >= mileage)]
  print(temp)
}
func2 = function(mtcars)
{
    mtcars$abcd = mtcars$mpg / mtcars$wt
    return (mtcars)
}