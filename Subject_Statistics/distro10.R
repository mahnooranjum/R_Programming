# probability of answering 5 questions correctly
five_correct <- dbinom(5, size = 25, prob = 0.2)

# probability of answering at least 5 questions correctly

atleast_five_correct <- pbinom(4, size = 25, prob = 0.2, lower.tail = FALSE)