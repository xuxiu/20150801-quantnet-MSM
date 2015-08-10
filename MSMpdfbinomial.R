# ------------------------------------------------------------------------------
# Course: MSM - Selected Topics of Mathematical Statistics
# ------------------------------------------------------------------------------
# Quantlet: MSMpdfbinomial
# ------------------------------------------------------------------------------
# Description: plot pdf of binomial distribution 
# ------------------------------------------------------------------------------
# Usage: 
# ------------------------------------------------------------------------------
# Inputs: 
# ------------------------------------------------------------------------------
# Output: 
# ------------------------------------------------------------------------------
# Keywords:  pdf, binomial distribution    
# ------------------------------------------------------------------------------ 
# See also:  
# ------------------------------------------------------------------------------
# Author:    Xiu Xu 20150603
# ------------------------------------------------------------------------------


graphics.off()
rm(list=ls()) #remove variable definitions

getwd()
setwd("")  

#Plot the CDF 
name=paste("Fig_MSMpdfbinomial",".pdf",sep="")
pdf(name)
y1 = dbinom(0:20, 20, 0.1)  
y2 = dbinom(0:20, 20, 0.5) 
y3 = dbinom(0:20, 20, 0.8) 

plot(y1, col="blue", type="h", lwd=2.5, ylab="", xlab="")
points(y1, col="blue", type="p", pch = 20, lwd=0.1, ylim=c(0, 0.3))

lines(y2, col="darkolivegreen4", type="h", lwd=2.5, ylab="", xlab="")
points(y2, col="darkolivegreen4", type="p", pch = 20, lwd=0.1, ylim=c(0, 0.3))

lines(y3, col="chocolate4", type="h", lwd=2.5, ylab="", xlab="")
points(y3, col="chocolate4", type="p", pch = 20, lwd=0.1, ylim=c(0, 0.3))

dev.off()
