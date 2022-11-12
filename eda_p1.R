#Data Analysis Using dplyr
#install.packages("dplyr")
library(dplyr)

# datasets::airquality

head(airquality)
tail(airquality)

colnames(airquality)

dim(airquality)

summary(airquality)

View(airquality)

df <- read.csv("ipl/ipldata_19/matches.csv")
View(df)

#EDA - Exploratory Data Analysis

# select
# filter
# mutate
# summarise
# arrange
# distinct

# select - select column
select(df, season)
head(select(df, season), 7)

# column slicing
head(select(df, season:team2), 7)

# fetch specific columns
head(select(df, season,winner))

# Unpick column
head(select(df, -team1, -team2))

head(select(df, -c(team1, team2, toss_winner)))


# Filter - to filter the data

filter(df, win_by_runs > 100)


# Pipelining / Chaining
df %>% 
  select(winner, win_by_runs) %>% 
  filter(win_by_runs > 100)


# AND Operation
df %>% 
  select(winner, win_by_runs) %>% 
  filter(win_by_runs > 100 & winner == 'Mumbai Indians')

# OR Operation
df %>% 
  select(winner, win_by_runs, win_by_wickets) %>% 
  filter(win_by_runs > 100 | win_by_wickets == 10)


df %>% 
  select(winner, win_by_runs, win_by_wickets) %>% 
  filter((win_by_runs > 100 | win_by_wickets == 10) & winner == "Mumbai Indians")


df %>% 
  select(winner, win_by_runs, win_by_wickets) %>% 
  filter((win_by_runs > 100 | win_by_wickets == 10) 
         & (winner %in% c('Mumbai Indians', 'Sunrisers Hyderabad')))



# arrange - sorting
df %>% 
  select(winner, win_by_runs, win_by_wickets) %>% 
  filter((win_by_runs > 100 | win_by_wickets == 10) 
         & (winner %in% c('Mumbai Indians', 'Sunrisers Hyderabad'))) %>% 
  # arrange(win_by_runs)
  arrange(desc(win_by_runs))




















