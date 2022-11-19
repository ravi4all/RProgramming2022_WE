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


head(mutate(df, new_col = mean(win_by_runs)))

new_df = data.frame(x1=c(3,2,5,1,6), x2=c(12,21,45,33,77))
new_df

# Multiply all variables with 5
temp_df <- mutate_all(new_df, funs("new_col" = .*5))
temp_df

# Calculate Rank for Variables
temp_df <- mutate_at(new_df, vars(x1:x2), funs(Rank = min_rank(.)))
temp_df

# Rank in desc order
temp_df <- mutate_at(new_df, vars(x1:x2), funs(Rank = min_rank(desc(.))))
temp_df

# Mutate with CASES
new_df %>% mutate(status = case_when(
                  is.na(x1) ~ "Not Available",
                  x1 == 1 ~ "Rank 1",
                  x1 == 2 ~ "Rank_2",
                  x1 == 3 ~ "Rank_3",
                  x1 == 4 ~ "Rank_4",
                  x1 >= 5 ~ "Rank_6"))

# Row wise operations
new_df %>% rowwise() %>% mutate(sum_ = sum(x1,x2))


# 1. Get total runs by each batsman in descending order
# 2. Get total wickets by each bowler
# 3. Get player with most sixes
# 4. Get fielder with most catches
# 5. Get individual highest score by players
# 6. Get team name with highest score












