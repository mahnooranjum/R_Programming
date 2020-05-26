
RMSE = function(a, b){
  sqrt(mean((a - b)^2))
}
# Import the dataset
dataset = read.csv('polyRegression.csv')
print(colnames(dataset))

dataset <- dataset[,-1]
print(colnames(dataset))

dataset$X2 = dataset$X^2
dataset$X3 = dataset$X^3
dataset$X4 = dataset$X^4
print(colnames(dataset))

# Splitting the dataset 
library(caTools)
split = sample.split(dataset$X, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#Scaling
training_set[,1] = scale(training_set[,1])
test_set[,1] = scale(test_set[,1])

# Regressor
regressor = lm(formula = y ~ .,
              data = training_set)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)

# Visualising
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
