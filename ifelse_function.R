# ifelse()

x <- 12
ifelse(x %% 2 == 0, "even", "odd")

y <- c(0,5,56,7,3,30,6,3,0,3,56,7,0,2,6)
# ifelse(y == 0, "0 value", "Not 0")
ifelse(y == 0, "Cannot divide", 10/y)
