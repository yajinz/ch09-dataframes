# Create a vector of 100 Credit Card Users ("User 1", "User 2", ... "User 100) (Using a loop)
credit_card_users <- paste("User", 1:100)

# Create a vector of amount of money owed using the runif function
money_owned <- runif(100, 0, 100)

# Create a vector of amount of money paid (that are typically higher than the amount Owed) (use runif again)
money_paid <- money_owned + runif(100, -50, 200)

# Create a data.frame by combining the vectors
bank_stuff <- data.frame(credit_card_users, money_owned, money_paid)

# Create a column "Difference" that stores the difference between amount Paid and amount Owed
bank_stuff$Difference <- bank_stuff$money_paid - bank_stuff$money_owned

# Create a column that is TRUE if the person Paid more than they Owe
bank_stuff$paid_more <- bank_stuff$Difference > 0

# What was the amount Owed of User 57?
print(bank_stuff$money_owned[bank_stuff$credit_card_users == "User 57"])

# How many users paid more than they owe?
print(nrow(bank_stuff[bank_stuff$paid_more == TRUE, ]))

# What was the total amount of money paid for all users?
print(sum(bank_stuff$money_paid))

# What was the name of the user who had the highest "Difference"?
hightest <- bank_stuff[bank_stuff$Difference == max(bank_stuff$Difference), 'credit_card_users']
print(hightest)

# Who was the user with the largest amount paid? 
largest <- bank_stuff[bank_stuff$money_paid == max(bank_stuff$money_paid), 'credit_card_users']
print(largest)

# What was the average "Difference"?
print(mean(bank_stuff$Difference))
