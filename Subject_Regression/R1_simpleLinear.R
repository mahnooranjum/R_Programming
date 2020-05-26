
# Import the dataset
dataset = read.csv('linearRegression.csv')

# Splitting the dataset 
library(caTools)
split = sample.split(dataset$X, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

# Regressor
regressor = lm(formula = y ~ X,
               data = training_set)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)

# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = training_set$X, y = training_set$y),
             colour = 'red') +
  geom_line(aes(x = training_set$X, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('X vs y (Training set)') +
  xlab('X') +
  ylab('y')

# Visualising the Test set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = test_set$X, y = test_set$y),
             colour = 'red') +
  geom_line(aes(x = training_set$X, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('X vs y (Test set)') +
  xlab('X') +
  ylab('y')
