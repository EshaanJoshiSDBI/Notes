Aditi = c(4,6,7,8)
Sharvari = c(3,1,2,7)
Eshaan = c(6,9,2,4)
mat1 = rbind(Aditi,Sharvari,Eshaan)
Khushbu = c(5,7,3,9)
mat1 = rbind(mat1,Khushbu)
SQL = c(sample(1:10))
mat1 = cbind(mat1,SQL)
colnames(mat1) = c('R','Python','Stats','ML','SQL')
mat1
#marks1 = mat1[c(1:4,4:4),byrow]
marks1 = mat1[c('Aditi','Khushbu'),]
marks1
mat1[c("Aditi","Khushbu"),]
marks2 = which.max(mat1[,'R'])
marks2
mat1[c(-2,-3)]
mat1
# 