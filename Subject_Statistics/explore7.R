# vector of bar heights
height <- table(mtcars$am)
# Make a vector of the names of the bars called "barnames"
barnames <- c("automatic", "manual")
# Label the y axis "number of cars" and label the bars using barnames
barplot(height, ylab = 'number of cars', names.arg = barnames)