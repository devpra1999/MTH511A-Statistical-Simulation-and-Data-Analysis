#Zero-inflated normal
z.inflated.norm <- function(p,mu = 0,sigma = 1){
    U <- runif(1)
    if (U<p){
        return(0)
    }
    else{
        return(rnorm(1,mu,sigma))
    }
}
