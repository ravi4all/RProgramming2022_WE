# Histogram

marks <- c(67,90,55,70,34,57,95)
hist(marks, main = "Marks Distribution")

hist(marks, main = "Marks Distribution", 
     xlab = "Marks", col = "red")

hist(marks, main = "Marks Distribution", 
     xlab = "Marks", col = "red",
     xlim = c(0,100),
     ylim = c(0,4))


marks = c(sample(10:100, size = 500, replace = T))
marks

hist(marks, main = "Marks Distribution", 
     xlab = "Marks", col = "red",
     xlim = c(0,100))
