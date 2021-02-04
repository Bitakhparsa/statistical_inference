# Define `p` as a proportion of Democratic voters to simulate
p <- 0.45

# Define `N` as the sample size
N <- 100

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# Define `X` as a random sample of `N` voters with a probability of picking a Democrat ('1') equal to `p`
# Calculate the mean of the absolute value of each simulated error. Print this value to the console.

x<- sample(c(1,0), size = N, replace = TRUE, prob = c(p, 1-p))

# Define `X_bar` as the average sampled proportion
X_bar <- mean(x)

# Calculate the standard error of the estimate. Print the result to the console.
sqrt(X_bar*(1-X_bar)/N)
