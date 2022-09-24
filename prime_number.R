# Prime Number Program using R
num <- 49
n <- num %/% 2
prime <- T
for (i in 2:n) {
  print(i)
  if(num %% i == 0) {
    prime <- F
    break
    #print("Not prime number...")
  }
}

if(prime) {
  print("Prime Number")
} else {
  print("Not Prime Number")
}
