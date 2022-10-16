# Arrays - can store n-dimensional data

array(c(1:18), dim = c(6,3))

array(c(1:18), dim = c(3,3,2))

x <- array(c(1:18), dim = c(6,3))
x
x[1]
x[1,]
x[,1]


x <- array(c(1:27), dim = c(3,3,3))
x
x[1]
x[,,1]

x[1,,]

x[,c(2),1]

length(x)
str(x)
