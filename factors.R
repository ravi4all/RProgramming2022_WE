# Factors
# helps when you have categorical data

dept <- c("IT","HR","Sales","HR","IT","HR","Sales","HR")
factor(dept)

f <- factor(dept)
f[1]
f[2]

df <- data.frame(names = c("John","Max","Sam","Steve","Ricky"),
                 dept = c("IT","IT","HR","HR","IT"),
                 salary = c(45000,65000,78000,25000,40000))

df

factor(df$dept)
