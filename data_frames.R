# Data Frames - 2D data structure
# stores data in a tabular format
# data will be stored in rows and columns

df <- data.frame(names = c("John","Max","Sam","Steve","Ricky"),
                 dept = c("IT","IT","HR","HR","IT"),
                 salary = c(45000,65000,78000,25000,40000))

df

# will print structure of data frame
str(df)
# will print statistical summary of numeric columns
summary(df)

View(df)
df <- edit(df)

df

# Access data from data frames

# will fetch first column
df[1]
# will fetch first column but returns a vector
df[,1]
# will fetch first row
df[1,]
df[3,]

df$dept
df$dept[2]

# will fetch first 3 observations
df[1:3,]

# will print column names of data frame
names(df)

ncol(df)  # return number of cols
nrow(df)  # return number of rows
length(df) # same as ncol

# by default head will print first 5 observations
head(df)
head(df, n=3) # will print first 3 observations

# by default tail will print last 5 observations
tail(df)
tail(df, n=2) # will print last 2 observations


# apply filters on data frame
df$dept == "IT"
df[df$dept == "IT",]

df[df$salary > 45000,]

df <- rbind(df, list("Adam", "HR", 67000))

df

df <- cbind(df, city = c("Pune","Chennai","Pune",
                         "Mumbai","Noida","Chennai"))
df







