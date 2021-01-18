#' calculate the probability of answering 12 ore more questions correctly given
#' that the student is merely guessing and store this in the variable p_value

p_value <- round(pbinom(11, size = 25, prob = 0.2, lower.tail=FALSE), 2)

# print the probability calculated above to the console
p_value

# assign either accepted or rejected to the variable conclusion
conclusion <- 'rejected'