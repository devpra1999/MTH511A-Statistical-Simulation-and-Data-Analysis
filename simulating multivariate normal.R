###############################################################################
## GENERATE FROM MULTIVARIATE NORMAL 
###############################################################################

# function to generate from multi-normal of dimension D
multinorm <- function(mu, sigma, D, N = 5e2) {
  
  # eigen-value and eigen-vector decomposition
  decomp = eigen(sigma)
  
  # getting sqrt(sigma)
  sig.sqrt = decomp$vectors %*% diag(decomp$values^(1/2)) %*% solve(decomp$vectors)
  sig.sqrt
  
  samp <- matrix(0, nrow=N, ncol=D)
  for (i in 1:N) {
    Z <- rnorm(D)
    # transforming back
    samp[i, ] <- mu + sig.sqrt %*% Z
  }
  return(samp)
}

# First: Mean (-5, 10), 0.5 Correlation
D <- 2
mu <- c(-5, 10)
sigma <- matrix(c(1,0.5,0.5,1), nrow=D, ncol=D)
samp <- multinorm(mu=mu, sigma=sigma, D=D)

par(mfrow=c(1,D+1)) # setting multiple graphs in a line

plot(samp, main="Correlation=0.5", xlab="x1", ylab="y1")
for (i in 1:D){
  main = paste("marginal density of X", i, sep="")
  plot(density(samp[,i]), main="marginal density of X1")
}
x