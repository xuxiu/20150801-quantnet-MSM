# ------------------------------------------------------------------------------
# Course:       MSM - Selected Topics of Mathematical Statistics
# ------------------------------------------------------------------------------
# Quantlet:     MSMpdfnormal
# ------------------------------------------------------------------------------
# Description:  Simulates data from the standard normal distribution N(0,1) 
#               and then plots the PDF (probability density function).
# ------------------------------------------------------------------------------
# Keywords:     simulation, pdf, plot, normal, standard, normal-distribution, distribution, density, standard normal,
#               random-number-generation, univariate, gauss, gaussian, continuous
# ------------------------------------------------------------------------------ 
# See also:     MSMcdfnormal, MSMpdfbinomial, SFElognormal, MVAtdis, MVAgausscauchy
# ------------------------------------------------------------------------------
# Author:       Xiu Xu 20150603
# ------------------------------------------------------------------------------

graphics.off()
rm(list = ls()) # remove variable definitions

n = 100
set.seed(80)
y = rnorm(n, 0, 1)  # Generate standard normal random numbers

# Plot the PDF 
plot(seq(-4, 4, 0.2), dnorm(seq(-4, 4, 0.2), 0, 1), col = "blue", type = "l", lwd = 2.5, ylab = "PDF", xlab = "X")
abline(v = 0)
