### ODE model: exponential growth

odeExpGr = function(init=1,tseq=seq(0,20,.01),pars=c(rr=.1)){
  
  library('deSolve')

  expGrowthODE  <- function(tt, yy, pars) {
    derivs <- pars['rr'] * yy
    return(list(derivs))
    }
  
  expGrowthOutput <- lsoda( init, tseq, expGrowthODE, pars)
  
  plot(expGrowthOutput[,1], expGrowthOutput[,2], col='blue', type='l')
  
  return(expGrowthOutput)
  
  }