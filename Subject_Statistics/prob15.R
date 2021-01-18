# P(mint | right)
mgr <- 7/10

# P(right)
# hint: Assume that people are indifferent
# in their tendency to use either of the dispensers
r <- 1/2

# P(mint)
# hint: to calculate this probabilty, make use of a 
# decision tree where you first select for 'left' or
# 'right' and subsequently for mint or fruit 
m <- (1/2) * (7/10) + (1/2) * (7/14)

# Use components to solve P (right | mint)
mgr * r/m