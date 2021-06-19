grades = c("A","C","B","B","A","C","D","A","A","A","B","B","C","D","A","A","B","A","C")
table(grades)
barplot(sort(table(grades),decreasing = FALSE))
barplot(table(grades))
table(grades)/length(grades)
round(table(grades)/length(grades),3)*100 + "%"
# as.character(round(table(grades)/length(grades),3)*100) + '%'