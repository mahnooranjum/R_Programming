# Assign the sample mean to object "m"
m <- mean(rrage)

# Assign the sample standard error to object "s"
s <- sd(rrage)/sqrt(200)

# Calculate the upper 95% confidence interval
m+1.9720*s

# Calculate the lower 95% confidence interval
m-1.9720*s