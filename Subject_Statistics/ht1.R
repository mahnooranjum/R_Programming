# calculate the value of cut_off
cut_off <- round(qnorm(0.95, mean=25, sd = round(3.5/sqrt(40),2)),2)

# print the value of cut_off to the console
cut_off