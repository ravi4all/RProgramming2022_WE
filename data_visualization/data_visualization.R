# ggplot2 - Grammar of Graphics
# components of ggplot
# data
# Aesthetics - data to be map on aesthetic attributes 
# like x-axis, y-axis, size, labels, alpha, shape, line width...
# Geometrics - point, line, histogram, bar, boxplot
# Facets - subset of data to be plotted
# Statistics - smooting, descriptive
# Coordinates - space b/w data and display using Cartesian, fixed, polar, limit
# Themes - Different themes to represent data

install.packages("ggplot2")
library(ggplot2)

df <- read.csv("housesData.csv")
View(df)

# plot histogram
ggplot(df, aes(x = price)) + geom_histogram()
ggplot(df, aes(x = price)) + geom_histogram(col='red')
ggplot(df, aes(x = price)) + 
  geom_histogram(col='red', fill='green')


ggplot(df, aes(x = price)) + 
  geom_histogram(col='red', fill='green', bins = 70)

ggplot(df, aes(x = price)) + 
  geom_histogram(col='red', fill='green', bins = 70)









