# List

person <- list(101, "John", 45, 56000.00, "IT")
person

person[1]

person[2]

person[-1]

names <- c("John","Mac","Sam","Smith")
dept <- c("IT","HR","IT","Sales")
salary <- c(45000, 55000, 40000,25000)

employees <- list(e_names = names, e_dept = dept, e_salary = salary)
employees

employees[1]
employees["e_names"]


employees$e_dept

str(employees)

x <- list(3,4,6,3)
str(x)

employees["e_names"]


employees[["e_names"]]
employees[["e_names"]][1]
employees[["e_names"]][3]

typeof(employees["e_names"])
typeof(employees[["e_names"]])

x
x[1]
x[[1]]



employees$e_names
employees$e_names[1]
employees$e_names[2]
employees$e_names[3]

employees$e_names[5] <- "Steve"




