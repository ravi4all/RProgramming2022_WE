# Break and Next

for (i in 1:10) {
  print(i)
  if(i == 5) {
    break
  }
}


for (i in 1:10) {
  if(i == 5) {
    next
  }
  print(i)
}


y <- c(4,2,5,0,12,5,6)
for(i in y) {
  if(i == 0) {
    next
  }
  z <- 12 / i
  print(z)
}




