
# Importing the dataset
dataset = read.csv('Moons.csv')
dataset = dataset[1:100,2:4]

# Splitting the dataset 
library(caTools)
split = sample.split(dataset$X1, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

# Fitting
classifier = glm(formula = y ~ .,
                 family = poisson,
                 data = training_set)

# Predicting
y_pred = predict(classifier, type = 'response', newdata = test_set[-3])

y_pred = ifelse(y_pred > 0.5, 1, 0)

# Making the Confusion Matrix
cm = table(test_set[, 3], y_pred)

# Visualising 
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]), max(set[, 1]), by = 0.01)
X2 = seq(min(set[, 2]), max(set[, 2]) , by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('X1', 'X2')
probability_y_grid = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(probability_y_grid > 0.5, 1, 0)
par(mar = rep(2, 4))
plot(set[, -3],
     main = 'Classification (Training set)',
     xlab = 'X1', ylab = 'X2',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'cyan1', 'brown1'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'blue', 'red3'))

# Visualising 
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]), max(set[, 1]), by = 0.01)
X2 = seq(min(set[, 2]), max(set[, 2]) , by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('X1', 'X2')
probability_y_grid = predict(classifier, type = 'response', newdata = grid_set)
y_grid = ifelse(probability_y_grid > 0.5, 1, 0)
par(mar = rep(2, 4))
plot(set[, -3],
     main = 'Classification (Test set)',
     xlab = 'X1', ylab = 'X2',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'cyan1', 'brown1'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'blue', 'red3'))
