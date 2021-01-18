# calculate the z score and assign it to a variable called z_value

z_value <- round((25.95 - 25)/round(3.5/sqrt(40),2),2)

# calculate the corresponding p value and store it in the variable called p_value
p_value <- round(pnorm(z_value, lower.tail = FALSE)*2, 2)


# print p_value to the console
p_value
