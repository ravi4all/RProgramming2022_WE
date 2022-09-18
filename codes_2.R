# Basic Calculator
# a <- 12
# b <- 21

# Type casting - converting one data type to another
a <- as.integer(readline(prompt = "Enter first num : "))
b <- as.integer(readline(prompt = "Enter second num : "))

c <- a + b
print(c)
paste("Sum is ", c)
paste("Sum of",a,"and",b,"is",c)
paste("Sum of",a,"and",b,"is",c, sep = "-")

d <- a - b
e <- a / b
f <- a * b
paste("Sub of",a,"and",b,"is",d)
paste("Div of",a,"and",b,"is",e)
paste("Mul of",a,"and",b,"is",f)



