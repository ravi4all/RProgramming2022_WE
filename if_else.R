# Flow Control in R
# - if..else - decision making
# - loops - for, while
# - ifelse()
# - break and next
# - repeat loop

num <- 10

if(num > 0) {
  print("Number is positive...")
} else {
  print("Number is negative...")
}

if(num > 0) print("Number is positive...") else print("Number is negative")

if(num %% 2 == 0) {
  print("Number is even")
} else {
  print("Number is odd")
}


x <- 20
y <- 9

print("Addition/Subtraction/Division/Multiplication : 1/2/3/4 ")

choice <- readline("Enter your choice : ")

if(choice == "1") {
  result = x + y
} else if(choice == "2") {
  result = x - y
} else if(choice == "3") {
  result = x / y
} else if(choice == "4") {
  result = x * y
} else {
  print("Invalid Choice...")
}

paste("Result is :", result)



