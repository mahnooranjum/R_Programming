# the data frame
data <- data.frame(outcome = 0:5, probs = c(0.1, 0.2, 0.3, 0.2, 0.1, 0.1))

# make a histogram of the probability distribution
barplot(names = data$outcome, height = data$probs)