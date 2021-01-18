# What is the threshold value for an outlier below the first quartile?

iqr <- as.numeric(IQR(mtcars$qsec))
first <- as.numeric(quantile(mtcars$qsec)[2])
third <- as.numeric(quantile(mtcars$qsec)[4])

first - 1.5 * iqr

# What is the threshold value for an outlier above the third quartile?

third + 1.5 * iqr