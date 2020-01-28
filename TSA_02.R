# Time Series Plots

require(astsa) # loading the required library

# Looking at a Dataset in astsa : Johnson and Johnson Quaterly Report

plot(JohnsonJohnson , xlab = 'Years', ylab = 'Earnings' , main = 'J&J Quarterly Earnings', type = 'o')

# We can look at a positive increasing upward trend with a seasonality in the plot.

# Looking at another dataset: flu

plot(flu , main = 'Montly deaths per 10,000' , xlab = 'Years' , ylab = 'Deaths')

# Mean Deviation of Temperature of Ocean-Land
plot(globtemp , xlab = 'Years', ylab = 'Deviation of Temperature', type = 'o')

# Mean Deviation of Temperature of Land
plot(globtempl , xlab = 'Years', ylab = 'Deviation of Temperature', type = 'o')

# Magnitude of Star
plot(star , xlab = 'Days', ylab = 'Magnitude')

# Generating a purely random process from standard normal distribution with 100 datapoints

random_process = ts(rnorm(100))

print(random_process)

# Applying a Auto-Correlation Function (ACF) on the randomly generted data.

(acf(random_process , type = 'covariance'))

# Plotting a Correlogram for Random Process

(acf(random_process , main = 'Correlogram Plot'))


# Generating a random walk

x = NULL
x[1] = 0
for (i in 2:1000) {
  x[i] <- x[i-1] + rnorm(1)
}

# Transforming the random process into time-series object 

random_walk <- ts(x)
plot(random_walk, main= 'Random Walk' , xlab = 'Days' , col = 'blue' , lwd = 2)

acf(random_walk)

# Removing the trend using differencing operator in random walk model.

random_walk_diff = diff(random_walk,lag = 1)
plot(random_walk_diff)
acf(random_walk_diff)

# Generating a MA(2) process
noise = rnorm(10000)
ma_2 = NULL
for ( i in 3:10000) {
  ma_2[i] = noise[i] + 0.7 * noise[i-1] + 0.3 * noise[i-2]
}

moving_average_process=ma_2[3:10000]
moving_average_process=ts(moving_average_process)

par(mfrow=c(2,1))

# plot the process and plot its ACF
plot(moving_average_process, main='A moving average process of order 2', ylab=' ', col='blue')
acf(moving_average_process, main='Correlogram of a moving average process of order 2')
