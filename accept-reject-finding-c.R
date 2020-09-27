### PARAMETERS
support <- c(-10,-1) # define the support for density here
# Define fx and gx inside this function
fx.by.gx <- function (x){
  # define fx.by.gx here as needed in question.
  fx <- -x
  gx <- 1/x
  return (fx/gx)
}

# this function returns the maximum value and the "x" at which that occurs
c <- optimize(fx.by.gx, support, maximum = TRUE)
c # minimum: "x" value; objective: "the minimum function value"
