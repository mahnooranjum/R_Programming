# Make p the proportion of the sample with road rage 
p <- 75 / 200
# Find the standard error of p
se <- sqrt( (p * (1 - p)) / 200)
# Calculate the upper level of the 95% confidence interval
p + 1.96 * se
# Calculate the lower level of the 95% confidence interval
p - 1.96 * se
# Report the range of the 95% confidence interval
(p+1.96*se) - (p-1.96*se)
# Report the range of the 99% confidence interval
(p+2.58*se) - (p-2.58*se)
# Which has the widest range?
99