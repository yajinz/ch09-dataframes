# Create a vector of 100 Credit Card Users
Credit_Card_Users = paste("users",1:100)
# Create a vector of amount of money owed using the runif function
own <- runif(Credit_Card_Users,1,10000)
# Create a vector of amount of money paid (that are typically higher than the amount Owed) (use runif again)
paid <- runif(Credit_Card_Users,1,10000)
# Create a data.frame by combining the vectors
data <- data.frame(Users = Credit_Card_Users, own = own, paid=paid)
# Create a column "Difference" that stores the difference between amount Paid and amount Owed
data$difference <- data$paid - data$own
# Create a column that is TRUE if the person Paid more than they Owe
data$compare <- c(data$difference>0)
# What was the amount Owed of User 57?
data[["own"]][57]
# How many users paid more than they owe?
sum(data$compare)
# What was the total amount of money paid for all users?
sum(data$paid)
# What was the name of the user who had the highest "Difference"?
max(data$difference)
# Who was the user with the largest amount paid? 
max(data$paid)
# What was the average "Difference"?
mean(data$difference)
# challenge: how to use dplyr to answer these questions?
