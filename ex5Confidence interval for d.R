# Add a statement to this line of code that will add a new column named `d_hat` to `polls`. The new column should contain the difference in the proportion of voters.
polls <- polls_us_election_2016 %>% filter(enddate >= "2016-10-31" & state == "U.S.") %>% mutate(d_hat=rawpoll_clinton/100-rawpoll_trump/100)


# Assign the sample size of the first poll in `polls` to a variable called `N`. Print this value to the console.
N <- polls$samplesize[1]
N
# Assign the difference `d_hat` of the first poll in `polls` to a variable called `d_hat`. Print this value to the console.
d_hat <- polls$d_hat[1]
d_hat
# Assign proportion of votes for Clinton to the variable `X_hat`.
X_hat <- (d_hat+1)/2

# Calculate the standard error of the spread and save it to a variable called `se_hat`. Print this value to the console.
se_hat <- 2*sqrt(X_hat*(1-X_hat)/N)
se_hat

# Use `qnorm` to calculate the 95% confidence interval for the difference in the proportions of voters. Save the lower and then the upper confidence interval to a variable called `ci`.
q <- 0.95
Z <- qnorm(1-(1-q)/2)
Z

ci <- c(d_hat-Z*se_hat , d_hat+Z*se_hat)
ci

# Create a new object called `pollster_results` that contains columns for pollster name, end date, d_hat, lower confidence interval of d_hat, and upper confidence interval of d_hat for each poll.
pollster_results <- polls %>% mutate(X_hat=(d_hat+1)/2, se_hat=2*sqrt(X_hat*(1-X_hat)/samplesize),lower=d_hat-(qnorm(1-(1-q)/2))*se_hat , upper=d_hat+(qnorm(1-(1-q)/2))*se_hat )
pollster_results <- pollster_results %>% select(pollster, enddate,d_hat, d_hat, lower, upper)
pollster_results
