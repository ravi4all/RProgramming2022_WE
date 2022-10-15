# Matrix

mat <- matrix(c(1,2,3,4,5,6,7,8,9))
mat

mat <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3)
mat

mat <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3, byrow = T)
mat

mat <- matrix(seq(1,24), nrow=6, ncol=4)
mat

# fetch individual elements
mat[1]
mat[2]
mat[7]

# columns
mat[,1]
mat[,2]

# row
mat[1,]
mat[2,]


# fetch 4th element of 2nd row
mat[2,4]

mat[c(2,4)]


mat[c(2,4),]
mat[c(2,3),]

mat
mat[1:4]
mat[1:4,]

mat[1:3,]

mat[,1:3]

mat
mat[1:3,1:3]

mat[2:4, 2:4]


mat[1,2] = 50
mat

# combine two matrices
x1 <- matrix(c(2,4,7,8), nrow=2, ncol=2)
x2 <- matrix(c(5,3,8,9), nrow=2, ncol=2)

# bind/combine matrices by column
cbind(x1, x2)
rbind(x1, x2)


x3 <- rbind(x1, x2)
x3

x3 > 4
x3[x3 > 4]

5 %in% x3


mat <- matrix(1:9, nrow = 3, ncol = 3, 
              dimnames = list(c("A","B","C"), c("X","Y","Z")))
mat

mat["A",]
mat[,"X"]


mat <- matrix(1:24, nrow = 6, ncol = 4)
mat

# Transpose a matrix
t(mat)


dim(mat)

dim(mat) <- c(2,12)
mat

dim(mat) <- c(12,2)
mat



