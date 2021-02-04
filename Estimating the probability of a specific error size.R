# Define `N` as the number of people polled
N <-100

# Define `X_hat` as the sample average
X_hat <- 0.51

# Define `se_hat` as the standard error of the sample average
se_hat <- sqrt(X_hat*(1-X_hat)/N)
se_hat
# Calculate the probability that the error is 0.01 or larger
1-(pnorm(0.01/se_hat)-pnorm(-0.01/se_hat))
