# ------------------------------------------------------------------------------
# Course: MSM - Selected Topics of Mathematical Statistics
# ------------------------------------------------------------------------------
# Quantlet: MSMcdfnormal
# ------------------------------------------------------------------------------
# Description: plot cdf of standard normal distribution 
# ------------------------------------------------------------------------------
# Usage: -
# ------------------------------------------------------------------------------
# Inputs: None
# ------------------------------------------------------------------------------
# Output: A plot of cdf of standard normal distribution
# ------------------------------------------------------------------------------
# Keywords:  cdf, standard normal   
# ------------------------------------------------------------------------------ 
# See also:  MSMpdfnormal
# ------------------------------------------------------------------------------
# Author:    Xiu Xu 20150603
# ------------------------------------------------------------------------------

graphics.off()
rm(list=ls()) #remove variable definitions

getwd()
setwd("")  

n = 100
set.seed(80)
y = rnorm(n,0,1)  #Generate standard normal random numbers

#Plot the CDF 
name=paste("Fig_MSMcdfnormal",".pdf",sep="")
pdf(name)
plot(seq(-4,4,0.2), pnorm(seq(-4,4,0.2),0,1), col="blue", type="l", lwd=2.5, ylab="CDF", xlab="X")
abline(v=0)
dev.off()