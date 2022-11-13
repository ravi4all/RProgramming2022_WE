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


# mutate - make a new column

mutate(df, Average=mean(win_by_runs))
View(df)

df %>% 
  select(season, win_by_runs) %>% 
  mutate(Average = mean(win_by_runs))

View(mtcars)

# Rank of variables
mutate_at(mtcars, vars(mpg:hp), funs(Rank = min_rank(.)))


# summarise and group_by
df %>% 
  group_by(season) %>% 
  summarise(Average = mean(win_by_runs))


df %>% 
  group_by(winner) %>% 
  summarise(Average = mean(win_by_runs)) %>% 
  arrange(desc(Average))

# 1. Get total runs by each batsman in descending order
# 2. Get total wickets by each bowler
# 3. Get player with most sixes
# 4. Get fielder with most catches
# 5. Get individual highest score by players
# 6. Get team name with highest score












