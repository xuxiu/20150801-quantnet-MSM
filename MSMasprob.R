# ------------------------------------------------------------------------------
# Course: MSM - Selected Topics of Mathematical Statistics
# ------------------------------------------------------------------------------
# Quantlet: MSMasprob
# ------------------------------------------------------------------------------
# Description: plot the time series for convergence in mean square but not 
#               convergence in almost sure  
# ------------------------------------------------------------------------------
# Usage:
# ------------------------------------------------------------------------------
# Inputs: 
# ------------------------------------------------------------------------------
# Output:  A plot of the example of the time series for convergence in mean square but not 
#               convergence in almost sure
# ------------------------------------------------------------------------------
# Keywords:  convergence in almost sure, convergence in mean square  
# ------------------------------------------------------------------------------ 
# See also: 
# ------------------------------------------------------------------------------
# Author:    Xiu Xu 20150807
# ------------------------------------------------------------------------------


rm(list = ls(all = TRUE))
graphics.off()


# install and load packages
libraries = c("")
lapply(libraries, function(x) if (!(x %in% installed.packages())) {
    install.packages(x)
})
lapply(libraries, library, quietly = TRUE, character.only = TRUE)

z = runif(20, min = 0, max = 1)

n = 1000
k = floor(log(n)/log(2)) - 1
x = matrix(, nrow = n, ncol = 10)
x[1, ] = 1

z = c(0.5, 0.2, 0.4, 0.6, 0.8)
for(s in seq(2, length(z))){
for(i in seq(1, k)){
   for(j in seq(0,2^i)){
      t = 2^i + j
	x[t,1] = (j*2^(-i) <= 0.5) &  (0.5 < (j+1)*2^(-i))
      x[t,s] = (j*2^(-i) <= z[s]) &  (z[s] < (j+1)*2^(-i))
      x = x*1
}}}

x
#Plot the CDF 
name=paste("MSMasprob1",".pdf",sep="")
pdf(name)
plot(x[1:400, 1], col="blue", type="p", pch = 20, lwd=3, ylim=c(-0.05, 1.1), ylab="", xlab="", cex.lab=2.0, cex.axis=2.0)
points(x[1:400, 2], col="darkolivegreen4", type="p", pch = 20, lwd=3)
points(x[1:400, 5], col="red3", type="p", pch = 20, lwd=3)


