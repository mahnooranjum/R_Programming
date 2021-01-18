# initialize an empty vector
new_number <- NULL

# run an operation 10 times.
# The ith position of new number will be set to i
# at the end of the loop, the vector new_number is printed
for (i in 1:10){
  new_number[i] <- i
}

print(new_number)