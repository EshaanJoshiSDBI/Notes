#Write a program that takes the input for the minimum expected mpg
#(miles per gallon) and the maximum weight (wt) and the print the
#names of the cars which meet both the criteria
minmpgmaxwt = function()
{
  min_mpg = as.numeric(readline('What is the minimum expected miles per gallon(mpg) '))
  max_wt = as.numeric(readline('What is the maximum expected weight(wt) '))
   subs = subset(mtCars, mtCars$mpg >= min_mpg & mtCars$wt <= max_wt)
   print(subs)
}
# If the user wants to know the name of the car which has the maximum
# mileage, how will you extract this information from the data frame.
print(mtCars[which.max(mtCars$mpg),])
#Define a new variable A which is calculated by taking the ratio of
#mpg and wt. Create a data frame of top 5 cars when compared on the
#basis of this value of A.
ratio_compare = function()
{
  for( i in 1:nrow(mtCars))
  {
    mtCars$ratio[i] = mtCars$mpg[i] / mtCars$wt[i]
  }
  mtCars[order(mtCars$ratio,decreasing = TRUE)[1:5],]
}
ratio_compare_new = function(df)
{
  df$ratio = df$mpg / df$wt
  df[order(df$ratio,decreasing = TRUE)[1:5]]
}