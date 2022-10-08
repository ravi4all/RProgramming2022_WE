add <- function(x,y) {
  z <- x + y
  return(z)
}

sub <- function(x,y) {
  z <- x - y
  return(z)
}

calc <- function() {
  x <- 12
  y <- 4
  z1 = add(x,y)
  z2 = sub(x,y)
  print(z1)
  print(z2)
}

calc()
