age = c(34,45,28,12,56,39,52,69,23,35,42,56) 
ind = which(age>=18 & age <=60)
ind = which(!(age>=18 & age<=60)) # rwo numbers or index wherer the criteria is not being followed 
airquality
head(airquality)
nrow_condition = length(which(airquality$Temp>= 60 & airquality$Temp <=75))
prop = nrow_condition/nrow(airquality)
nrows_conditions = length(which(!(airquality$Ozone = is.NA | airquality$Solar.R = is.NA)))
sum(is.na(airquality$Ozone | airquality$Solar.R))
x = c("MS23","A123","BN56","PY21","ADF3")
y = x[2]
y_chrs = strsplit(y,"")[[1]]
letters
digits = c("0","1","2","3","4","5","6","7","8","9")
y2 = y_chrs[3:4]
which(y2 %in% digits)
length(which(y2 %in% digits))
length(which(y2 %in% digits)) == 2
y1 = y_chrs[1:2]
which(y1 %in% letters)
length(which(y1 %in% letters)) == 2
