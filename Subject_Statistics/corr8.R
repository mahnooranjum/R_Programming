# Your plot
plot(money, prosocial, xlab = "Money", ylab = "Prosocial Behavior")
# Store your regression coefficients in a variable called "line"
line <- lm(prosocial ~ money)
# Use "line" to tell abline() to make a line on your graph
abline(line)