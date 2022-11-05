# Data Visualization

# Histogram, Bar Chart, Pie Chart, Box Plot
# Plotly, ggplot, geofacet, shiny

marks <- c(67,90,55,70,34,57,95)
names <- c("John","Max","Sam","Nick","Tom","Naman","Akash")

# Simple Bar Plot
barplot(marks)

# Bar Plot with title and labels
barplot(marks, main = "Marks of Students", 
        xlab = "Students", ylab = "Marks",
        names.arg = names)

# Bar plot with color
barplot(marks, main = "Marks of Students", 
        xlab = "Students", ylab = "Marks",
        names.arg = names,
        col = "red", density = 60)

# Horizontal Bar plot
barplot(marks, main = "Marks of Students", 
        xlab = "Students", ylab = "Marks",
        names.arg = names,
        col = "red", density = 60, horiz = T)


# Stacked Bar Plot
population <- matrix(c(232,453,563,174,456,401,562,922),
                     nrow = 2, ncol = 4)
population

result <- barplot(population,
                  main = "Gender Ratio",
                  xlab = "States",
                  ylab = "Count",
                  names.arg = c("Delhi","Chennai","Mumbai","UP"),
                  col = c("red","blue"))

legend("topleft", c("Male", "Female"),
       fill = c("red","blue"))









