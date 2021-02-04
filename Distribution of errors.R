# Define `p` as the proportion of Democrats in the population being polled
p <- 0.45

# Define `N` as the number of people polled
N <- 100

# The variable `B` specifies the number of times we want the sample to be replicated
B <- 10000

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# Create an objected called `errors` that replicates subtracting the result of the `take_sample` function from `p` for `B` replications

take_sample <- function(N,p){
  x<- sample(c(1,0), size = N, replace = TRUE, prob = c(p, 1-p))
  mean(x)
} 

errors <- replicate(B,(p-take_sample(N,p)))

# Calculate the mean of the errors. Print this value to the console.
mean(errors)

# Calculate the mean of the absolute value of each simulated error. Print this value to the console.

mean(abs(errors))

# Calculate the standard deviation of `errors`
sqrt(mean((errors)^2))
