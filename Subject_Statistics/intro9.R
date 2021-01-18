# list all the files in the working directory
list.files(getwd())

# read in the cars dataset and store it in a variable called cars
cars <- read.csv("cars.csv", sep = ";")

# print the first 6 rows of cars

print(head(cars))