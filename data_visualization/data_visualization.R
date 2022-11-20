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


# barplot
ggplot(df, aes(x = fuel)) + geom_bar()
ggplot(df, aes(x = rooms)) + geom_bar()
ggplot(df, aes(x = rooms)) + geom_bar(position = "fill")

ggplot(df, aes(x=waterfront, fill = centralAir)) + 
  geom_bar(position = "fill")

ggplot(df, aes(x=waterfront, fill = sewer)) + 
  geom_bar(position = "fill")

ggplot(df, aes(x=rooms, fill = waterfront)) + 
  geom_bar(position = "fill")



# scatterplot

ggplot(df, aes(x = price, y = livingArea)) + geom_point()
ggplot(df, aes(x = price, y = landValue)) + geom_point()

ggplot(df, aes(x = price, y = livingArea)) + 
  geom_point() + geom_smooth()

# lm - linear model
ggplot(df, aes(x = price, y = livingArea)) + 
  geom_point() + geom_smooth(method = "lm")


# boxplot
ggplot(df, aes(x = price)) + geom_boxplot()

ggplot(df, aes(x=waterfront, y=price)) + geom_boxplot()

ggplot(df, aes(x=factor(rooms), y=price)) + 
  geom_boxplot()



# facet grid - subplots
ggplot(df, aes(x=price, y=livingArea, col = centralAir)) + 
  geom_point() + geom_smooth(method = "lm")

ggplot(df, aes(x=price, y=livingArea, col = centralAir)) + 
  geom_point() + geom_smooth(method = "lm") +
  facet_grid(~centralAir)

ggplot(df, aes(x=price, y=livingArea, col = sewer)) + 
  geom_point() + geom_smooth(method = "lm") +
  facet_grid(~sewer)


ggplot(df, aes(x=price, y=livingArea, col=heating)) + 
  geom_point() + geom_smooth(method = "lm") +
  facet_grid(waterfront ~ heating)



# themes and styling

obj_1 <- ggplot(df, aes(x=factor(rooms), y=price)) + 
  geom_boxplot()

obj_2 <- obj_1 + labs(title = 'Price w.r.t rooms',
                      subtitle = "Rooms are available from 2 to 12",
                      x = "Number of Rooms",
                      y = "Price")

obj_2 + theme_dark()
obj_2 + theme_classic()
obj_2 + theme_gray()

obj_2 + theme(panel.background = element_rect(fill = "palegreen"))










