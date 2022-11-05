# box plot

head(mtcars)

boxplot(mtcars$mpg)

boxplot(mtcars$disp, main = "Disp Box Plot",
        ylab="Disp",xlab="X-Axis", col = "orange")


boxplot(mpg ~ cyl, data = mtcars, main = "Mileage Box Plot",
        ylab="Disp",xlab="X-Axis", col = "orange")
