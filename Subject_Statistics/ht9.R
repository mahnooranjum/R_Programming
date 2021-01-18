# calculate the t value and store it in the variable t_value

t_value <- round(qt(0.975, df = 49),2)

#' calculate a 95% confidence interval as a vector with two values and store it in a
#' a variable called conf_interval

conf_interval <- round(186.5 + c(-1, 1) * t_value * 0.71, 2)

# print conf_interval to the console

conf_interval