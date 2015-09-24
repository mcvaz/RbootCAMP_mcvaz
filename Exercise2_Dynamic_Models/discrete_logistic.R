### Logistic growth in discrete time
discreteLogisticFun = function(N0=10, RR=0.95, KK=250, ttMax=100){
  NN <- matrix(NA, nrow=1, ncol=ttMax+1)  # initialize variable to a vector of NA values
  NN[1] <- N0   # set first value to initial condition
  for (tt in 1:ttMax) {
    NN[tt+1] <- NN[tt]*(1+RR*(1-NN[tt]/KK))
    }
  plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col='blue',cex=.5,pch=16)
  return(NN)
  }
