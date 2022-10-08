# Switch Case
print("Press 1 for addition : ")
print("Press 2 for subtraction : ")
print("Press 3 for division : ")
print("Press 4 for multiplication : ")

ch <- readline("Enter your choice : ")

fnum <- as.integer(readline("Enter first num : "))
snum <- as.integer(readline("Enter second num : "))

result <- switch (ch,
  "1" = fnum + snum,
  "2" = fnum - snum,
  "3" = fnum / snum,
  "4" = fnum * snum
)

print(result)

