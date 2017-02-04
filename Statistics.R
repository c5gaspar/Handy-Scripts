## Generation of lower and upper 95% CI's ##
## c(-1, 1) acts to provide us with both the lower and upper tail of the distribution

x <- rnorm(2)
(mean(x) + (c(-1, 1) * qnorm(.975)) * (sd(x)/sqrt(length(x)))) 
        