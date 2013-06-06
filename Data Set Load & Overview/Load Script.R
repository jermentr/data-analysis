# TODO: Add comment
# 
# Author: Josh
###############################################################################
detach("package:foreign", unload=TRUE)
getOption("defaultPackages")

library(class)
library(cluster)
library(codetools)
library(datasets)
library(foreign)
library(grDevices)
library(grid)
library(lattice)
library(MASS)
library(Matrix)
library(methods)
library(nlme)
library(WDI)
library(HistData)
library(data.table)
library(gclus)
library(scatterplot3d)
library(car)

library(ggplot2)
library(qcc)
library(AER)
library(Zelig)

utils:::menuInstallLocal()

utils:::menuInstallPkgs()

EAEF <- read.table(file.choose(), header=TRUE, sep=",")

names(EAEF)

ols<-lm(log(EARNINGS) ~ S + EXPER + ASVABC, data=EAEF)

summary(ols)

opar <- par(mfrow = c(2,2), oma = c(0, 0, 1.1, 0)) 
plot(ols, las = 1) 
par(opar)


q()
y

install.packages("RKML", repos = "http://www.omegahat.org/R")
install.packages("RKML", repos = "http://www.omegahat.org/R",type = source”)
