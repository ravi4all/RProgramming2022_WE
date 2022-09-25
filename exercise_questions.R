# 1. Print Sum of N Natural Number
#    input : n = 5
#    output : 15, 1+2+3+4+5

# 2. Check whether a number is armstrong
#    input : n = 153
#    output : True, 1^3 + 5^3 + 3^3 = 153

a <- 40
b <- 18
while (a %% b != 0) {
  rem <- a %% b
  a <- b
  b <- rem
}

print(b)



