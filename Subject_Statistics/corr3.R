# What percentage of high school students smoke 0-9g of tobacco?
t <- table(smoking$student, smoking$tobacco)
round(as.numeric(t[1,1] / (t[1,1] + t[1,2] + t[1,3]))*100, digits=1)
# Of the students who smoke the most, what percentage are in university?

round(as.numeric(t[2,3] / (t[2,3] + t[1,3]))*100, digits=1)