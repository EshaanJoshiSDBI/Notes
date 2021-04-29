'''x = c("MS23","A123","BN56","PY21","ADF3")
check = function(x)
{
  i = 0
  ii =''
  digits = c("0","1","2","3","4","5","6","7","8","9")
  for( i in 1:length(x))
  {
    ii = strsplit(x[i],"")
    if(length(which(!(ii[1:2] %in% Letters))) == 2 && length(which(!(ii[3:4] %in% digits))) == 2)
    {
      y = append(y,x[i],after = length(y))
    }
  }
}'''
x = c("MS23","A123","BN56","PY21","ADF3")
trend = function(x)
{
  y = c()
  i = 0
  digits = c("0","1","2","3","4","5","6","7","8","9")
  for( i in 1:length(x))
  {
    ii = strsplit(x[i],'')[[1]]
    y_chr = ii[1:2]
    y_dig = ii[3:4]
    if(!(length(which(y_dig %in% digits)) == 2))
    {
      if(!(length(which(y_chr %in% LETTERS)) == 2))
      {
        y = append(y,x[i],after = length(y))
      }
    }
  }
}
pattern = function(x)
{
  for(i in 1:length(x))
  {
    y_chr = i[1:2]
    y_dig = i[3:4]
    y = str_subset(y_chr,LETTERS)
  }
}
pattern_match = function(x)
{
  for(i in 1:length(x))
  {
    ii = toString(x[i])
    if(substr(ii,1,2) %in% LETTERS)
    {
      if(substr(ii,3,4) %in% digits)
      {
        y = append(y,i,after = length(y))
      }
    }
  }
}
correct_pattern = function(x)
{
  y = str_subset(x,'^[A-Z][A-Z][0-9][0-9]')
  print(x[! x %in% y])
}
x = c("MS23", "A123", "BN56", "PY21", "ADF3")
for( i in x)
{
  if(grep('[A-Z][A-Z][0-9][0-9]',i))
  {
    y = append(y,i,after = length(y))
  }
}