# calculate the standard deviation of the sampling distribution and put in a variable called sample_sd
sample_sd <- sqrt((0.1*(1-0.1))/200)

# calculate the probability
pnorm(0.13, mean = 0.10, sd = sample_sd, lower.tail = FALSE)