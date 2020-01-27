# Week-1 

# Making an array of numbers using Concat Operator.

data.1 <- c(35, 8, 10, 23, 42)

print(data.1)

# Summary of the series

summary(data.1)

# Mean of the series

mean(data.1)

# Standard Deviation of Series

sd(data.1)


# Plotting a Histogram from the data.

small.size.dataset <- c(91,49,76,112,97,42,70, 100, 8, 112, 95, 90, 78, 62, 56, 94, 65, 58, 109, 70, 109, 91, 71, 76, 68, 62, 134, 57, 83, 66)
hist(small.size.dataset)

# Adding certain variations in histogram plot
# xlab -> Label on X-axis
# freq -> if False, then its density distribution
# breaks -> Number of Bins to use in Histogram
hist(small.size.dataset ,xlab =  'Data Points', freq =F , main =  'Histogram' , col =  'blue' , breaks = 10)
lines(density(small.size.dataset , col = 'black' ,lwd = 5))


# Generation of Normally Distributed Data

Test_1_scores = round(rnorm(50, mean = 78 , sd = 10))
Test_2_scores = round(rnorm(50 , mean =  78 , sd = 14))

# Code for basic scatter plot

plot(Test_2_scores~Test_1_scores)

plot(Test_2_scores ~ Test_1_scores , ylab = 'Test 2 Scores', xlab = 'Test 1 Scores', col = 'blue' , main = 'Scatter Plot')

# Fitting a Linear Regression Model on Time Series Data:

# Data -> Mauna Lao C02 data

help("co2")

# Plotting the Dataset
plot(co2 , main = 'Atmospheric C02 Concentration')

# Developing a Linear Model

co2.linear.model <- lm(co2 ~ time(co2) )
abline(co2.linear.model)


# Residual Analysis of the data.

co2.residual <- resid(co2.linear.model)
# Plotting a histogram of Residuals to check the normality assumption
hist(co2.residual , main =  'Histogram of Residuals')

# Plotting a Q-Q Plot to check for the Normality Assumption

qqnorm(co2.residual)
qqline(co2.residual)

# Plotting Residuals vs Time
plot(co2.residual ~ time(co2))
plot(co2.residual ~ time(co2) , xlim = c(1960,1963) , main = 'Zoomed Version')

# Inferential Statistics in R

help("sleep")
plot(extra~group, data=sleep, main = "Extra Sleep in Gossett Data by Group")
attach(sleep)

extra.1 <- extra[group == 1]
extra.2 <- extra[group == 2]

# Testing Hypothesis - T-test 

t.test(extra.1 , extra.2 , paired =  TRUE , alternative = 'two.sided')


# Correlation and Covariances in data.

