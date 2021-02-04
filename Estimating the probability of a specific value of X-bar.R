# Define `p` as the proportion of Democrats in the population being polled
p <- 0.45

# Define `N` as the number of people polled
N <- 100

# Calculate the probability that the estimated proportion of Democrats in the population is greater than 0.5. Print this value to the console.
se <- sqrt(p*(1-p)/N)
se
1-(pnorm(0.5/se)-pnorm(-0.5/se))


# Define `p` as the proportion of Democrats in the population being polled
p <- 0.45

# Define `N` as the number of people polled
N <- 100

# Calculate the probability that the estimated proportion of Democrats in the population is greater than 0.5. Print this value to the console.
se <- sqrt(p*(1-p)/N)
1-pnorm(0.05/se)

