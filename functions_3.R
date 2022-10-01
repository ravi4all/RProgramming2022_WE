# R Programming Environment
outer <- function() {
  # Global variable using <<-
  k <<- 10
  print("Outer is executed...")
  inner_1 <- function() {
    k1 <<- 20
    print("Inner_1 is executed...")
  }
  inner_2 <- function() {
    k2 <<- 30
    print("Inner_2 is executed...")
  }
  # inner_1()
  # inner_2()
  operations <- c(inner_1, inner_2)
  return(operations)
}

opr <- outer()
opr
fun_1 <- opr[[1]]
fun_1()

fun_2 <- opr[[2]]
fun_2()

