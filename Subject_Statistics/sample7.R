# calculate the area under the curve left of the observation
pnorm(2.02, mean=0, sd=1, lower.tail = TRUE)
# calculate the area under the curve right of the observation
pnorm(2.02, mean=0, sd=1, lower.tail = FALSE)
