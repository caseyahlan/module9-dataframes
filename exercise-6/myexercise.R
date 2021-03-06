# Exercise 6: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- read.csv("data/huskies_2015.csv", header = TRUE)


# Create a vector of the teams that the Huskies played against during that season
opponents <- husky.games.2015$opponent
print(opponents)

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2015$uw_score


# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015$rushing_yards
passing.yards <- husky.games.2015$passing_yards

# Create a variable called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- (rushing.yards + passing.yards)


# Add the `combined.yards` vector to the dataframe with the column name being `combined`
husky.games.2015$combined <- combined.yards
print(husky.games.2015)

# Write the dataframe to a new `.csv` file called `huskies_2015_improved.csv` into the `data directory`
write.csv(husky.games.2015, "data/huskies_2015_improved.csv")


# What is the score of the game where the Huskies had the most combined yards?
44 - 31


# Define a function `MostYardsScore` that takes in an argument `games` (a data frame) and
# returns a descriptive sentence about the game that was played that had the most yards scored in it.

# a function that takes in a data frame and returns a descriptive sentence about the game with the most yards scored
MostYardsScore <- function(gamesframe) {
  gamesframe <- data.frame(sort.list(gamesframe$combined, decreasing = TRUE))
  yards <- games2[1, 'combined']
  opponent <- gamesframe[1, 'opponent']
  finalans <- paste('The Huskies scored the most yards in the game against', opponent, 'in which they scored', yards, 'yards.')
  print(finalans)
}
?order
MostYardsScore(husky.games.2015)
MostYardsScore(husky.games.2016)
print(husky.games.2016)
# Challenge!
# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
husky.games.2016 <- read.csv("data/huskies_2016.csv", header = TRUE)


# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards16 <- husky.games.2016$rushing_yards
passing.yards16 <- husky.games.2016$passing_yards

# Create a variable called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards16 <- (rushing.yards16 + passing.yards16)


# Add the `combined.yards` vector to the dataframe with the column name being `combined`
husky.games.2016$combined <- combined.yards16
print(husky.games.2016)
