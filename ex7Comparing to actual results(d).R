polls <- polls_us_election_2016 %>% filter(enddate >= "2016-10-31" & state == "U.S.") %>% mutate(d_hat=rawpoll_clinton/100-rawpoll_trump/100)



# The `pollster_results` object has already been loaded. Examine it using the `head` function.
head(pollster_results)

# Add a logical variable called `hit` that indicates whether the actual value (0.021) exists within the confidence interval of each poll. Summarize the average `hit` result to determine the proportion of polls with confidence intervals include the actual value. Save the result as an object called `avg_hit`.


avg_hit <- pollster_results %>% mutate(hit=(lower<0.021 & upper>0.021)) %>% summarise(mean(hit))

avg_hit
