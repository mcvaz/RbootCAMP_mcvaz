### Logistic growth model

odeLogGr = function(init=1,tseq=seq(0,20,.01),pars=c(rr=.1,kk=100)){
  
  library('deSolve')
  
  logGrowthODE  <- function(tt, yy, pars) {
    derivs <- pars['rr']*yy*(1-yy/pars['kk'])
    return(list(derivs))
  }
  
  logGrowthOutput <- lsoda( init, tseq, logGrowthODE, pars)
  
  plot(logGrowthOutput[,1], logGrowthOutput[,2], col='blue', type='l')
  
  return(logGrowthOutput)
  
  }