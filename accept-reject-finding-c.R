fx.by.gx <- function (x){
  # define fx.by.gx here as needed in question.
  fx <- -x
  gx <- 1/x
  return (fx/gx)
}

# this function returns the maximum value and the "x" at which that occurs
# c(a,b) defines the range
c <- optimize(fx.by.gx, c(-10,-1), maximum = TRUE)
c # minimum: "x" value; objective: "the minimum function value"
