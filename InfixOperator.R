# Infix Operator

'%div%' <- function(x,y) {
  if(x %% y == 0) {
    return(T)
  } else {
    return(F)
  }
}
