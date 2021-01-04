# Your plot
plot(money, prosocial, xlab = "Money", ylab = "Prosocial Behavior")
# Your regression line
line <- lm(prosocial ~ money)
abline(line)
# Add a line that shows the mean of the dependent variable
abline(mean(prosocial), 0)