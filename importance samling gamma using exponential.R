## Parameters for Gamma Density
alpha <- 2
beta <- 5

## Setting kth moment 
k <- 2

## Parameter for proposal Exponential Distribution
lambda <- 3

N <- 1e4 # number of samples
samp <- rexp(N, rate=lambda) # importance samples
values <- samp^k * dgamma(samp, shape = alpha, rate = beta) / dexp(samp, rate = lambda)

# result
mean(values)
