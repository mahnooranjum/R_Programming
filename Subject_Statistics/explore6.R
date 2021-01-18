#Assign the frequency of the mtcars variable "am" to a variable called "height"
height <- table(mtcars$am)

#Create a barplot of "height"
barplot(height)
