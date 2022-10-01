# Return Statement
pow <- function(x,y) {
  output <- x ^ y
  print(paste(x,"raised to the power",y,"is",output))
  return(output)
  # return is the last statement of any function
  # print("This statement is after return...")
}

p <- pow(3,7)
p
