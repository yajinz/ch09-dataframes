### -------------------- Exercise 1: Creating data frames --------------------

## Create a vector of the number of points the Seahawks scored in the first 5 games
# Hint: google "Seahawks scores", or check the football database:
# http://www.footballdb.com/teams/nfl/seattle-seahawks/results
# here 'Result' displays scores, 'L' stands for loss, 'W' for win
points <- c(9, 12, 27, 46, 16)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 5 games
points.allowed <- c(17, 9, 33, 18, 10)


# Combine your two vectors into a dataframe
games <- data.frame(points, points.allowed)


# Create a new column "diff" that is the difference in points
games$diff <- games$points - games$points.allowed


# Create a new column "won" which is TRUE if the Seahawks won
games$won <- games$diff > 0


# Create a vector of the opponents
opponents <- c('Green Bay', 'San Francisco', 'Tennessee', 'Indianapoli', 'LA Rams')


# Add the vector of opponents into the data frame
rownames(games) <- opponents
