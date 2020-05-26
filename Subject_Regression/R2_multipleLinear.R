
RMSE = function(a, b){
  sqrt(mean((a - b)^2))
}

# Import the dataset
dataset <- read.csv('multipleRegression.csv')
print(colnames(dataset))

dataset <- dataset[,-1]
print(colnames(dataset))
# Splitting the dataset 
library(caTools)
split = sample.split(dataset$X, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#Scaling
training_set[,1:2] = scale(training_set[,1:2])
test_set[,1:2] = scale(test_set[,1:2])

# Regressor
regressor = lm(formula = y ~ .,
               data = training_set)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)


# Visualising the test versus prediction results
library(ggplot2)
ggplot() +
  geom_point(aes(x = test_set$y, y = predict(regressor, newdata = test_set)),
             colour = 'red') +
  ggtitle('y_test vs y_pred (Test set)') +
  xlab('y_test') +
  ylab('y_pred')

print(summary(regressor))
print("=========================")
print(RMSE(test_set$y, y_pred))
