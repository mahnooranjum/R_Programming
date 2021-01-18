# probability that x is smaller or equal to two
prob <- 0.1 + 0.2 + 0.3

#' probability that x is 0, smaller or equal to one,
#' smaller or equal to two, and smaller or equal to three

cumsum(c(0.1,0.2,0.3,0.2))
