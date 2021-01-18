# arguments to change the y-axis scale to 0 - 20, label the x-axis and colour the bars red
hist(mtcars$carb, main = "Carburetors", ylim = c(0,20), xlab = "Number of Carburetors",
     col = "red")