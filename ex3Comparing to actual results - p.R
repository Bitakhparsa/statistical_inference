# The `pollster_results` object has already been loaded. Examine it using the `head` function.
head(pollster_results)

# Add a logical variable called `hit` that indicates whether the actual value exists within the confidence interval of each poll. Summarize the average `hit` result to determine the proportion of polls with confidence intervals include the actual value. Save the result as an object called `avg_hit`.

p<- 0.482

avg_hit <- pollster_results %>% mutate(hit=(lower<p & upper>p)) %>% summarise(mean(hit))

avg_hit
