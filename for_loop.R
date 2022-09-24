# Loops
# - for - when we know the limit of a loop
# - while - when we don't know the limit, while loop depends on a condition
num <- 15
for (var in 1:20) {
  print(num * var)
}


x <- c(3,2,4,7,8,5,5,8,23,56,8,4)

for (var in x) {
  if(var %% 2 == 0) {
    print(var)
  }
}


# while loop
num <- 100
while (num > 0) {
  print(paste("Num is :",num))
  num = num %/% 2;
}







