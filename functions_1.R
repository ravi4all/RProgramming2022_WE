# Functions
# - break our code into parts
# - reusable piece of code

# 2 type of functions
# - pre-defined function  - print(), paste(), c()
# - user defined function - defined by user

# functions are divided into 2 parts
# - function definition
# - function call

# Syntax of a function
# func_name <- function(argument) {
#   Logic
# }

# Global Variables
x <- 10
y <- 7

# Named Arguments

# Default Arguments
calc <- function(a=0,b=0) {
  # Local Variables
  # x <- 12
  # y <- 5
  sum <- a + b
  sub <- a - b
  pow <- a ^ b
  print(paste("Sum is",sum))
  print(paste("Sub is",sub))
  print(paste(a,"raised to the power", b, "is",pow))
}

# calc()
# Arguments

calc(4,7)
calc(14,5)
calc(5,9)
calc(2,17)

calc(a = 6, b = 7)
calc(b = 3, a = 7)

calc()
calc(a = 5)
calc(b = 5)
calc(5,6)



