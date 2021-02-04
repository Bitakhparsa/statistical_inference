# The `polls` object that filtered all the data by date and nation has already been loaded. Examine it using the `head` function.
head(polls)

# Create a new object called `pollster_results` that contains columns for pollster name, end date, X_hat, se_hat, lower confidence interval, and upper confidence interval for each poll.
q <- 0.95
Z <- qnorm(1-(1-q)/2)

polls<- polls %>% mutate(X_hat=polls$rawpoll_clinton/100,samplesize, se_hat=sqrt(X_hat*(1-X_hat)/samplesize),lower=X_hat-Z*se_hat, upper=X_hat+Z*se_hat)
head(polls)
pollster_results <- polls %>% select(pollster, enddate, X_hat, se_hat, lower,  upper)
pollster_results
