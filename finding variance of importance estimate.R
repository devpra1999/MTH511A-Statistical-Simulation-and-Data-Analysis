## Below we are finding the E[x^k] with an exponential proposal density and 
## gamma as our target density.

N <- 1e4
r <- 1e3 # number of simulations
k <- 2 # kth moment expectation
estimates <- numeric(r) # to store the estimates of all the simulations

for (a in 1:r) {
  sample <- rexp(N, rate = 3) # importance sample
  the.function <- sample^k*dgamma(sample, shape = 2, rate = 5)/dexp(sample, rate = 3)
  estimates[a] <- mean(the.function)
}

var(estimates)
