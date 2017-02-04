##### Normal CI #####
## c(-1, 1) acts to provide us with both the lower and upper tail of the distribution

x <- #(values of x)
(mean(x) + (c(-1, 1) * qnorm(.975)) * (sd(x)/sqrt(length(x)))) 

##### Binomial CI 

dat <- #(binomial data)
x <- mean(dat) # prop of success
(x + c(-1, 1) * qnorm(.975) * sqrt(x * (1-x)/length(dat)))

# OR less precisely (wider)

binom.test(length(dat[dat==1]), length(dat))$conf.int


##### Poisson CI 

x <- #(number of events)
t <- (time)
lambda <- x/t

(lambda + c(-1, 1) * qnorm(.975) * sqrt(lambda/t))

# Or less precisely (wider)

poisson.test(x, T = t)$conf
        