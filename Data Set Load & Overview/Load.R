# TODO: Add comment
# 
# Author: Josh
###############################################################################

install.packages("reshape")
install.packages("proto")

install.packages("ggplot2")
install.packages("qcc")
install.packages("AER")
install.packages("RODBC")
install.packages("RcmdrPlugin.IPSUR")
install.packages("XML")
install.packages("Rcompression")
install.packages("lmtest")
install.packages("pspline")
install.packages("Biobase")

install.packages("flowcore")

install.packages("RKML", repos = "http://www.omegahat.org/R", dep = TRUE, type = "source") 


install.packages(c("latticeExtra", "copula", "ellipse", "ellipse",
				"locfit", "logspline", "mapproj", "maps", "maps",
				"mlmRev", "RColorBrewer"))
source("http://bioconductor.org/biocLite.R")
biocLite(c("flowCore", "flowViz", "hexbin"))
install.packages("gsl")

library(RcmdrPlugin.IPSUR)

library(ggplot2)
library(qcc)
library(RODBC)
library(AER)

library(Rcompression)
library(XML)
library(RKML)


library(latticeExtra)
library(copula)
library(ellipse)
library(ellipse)
library(locfit)
library(logspline)
library(mapproj)
library(maps)
library(mlmRev)
library(RColorBrewer)
library(flowCore)
library(flowViz)
library(hexbin)

 library(quantreg)
 
 library(gsl)

par(mfcol=c(1,2))

x<--200:100
y<-100*exp(-exp(0.02*x))
plot(x,y,type="l", main="negative Gompertz")

x<-0:100
y<-50*exp(-5*exp(-0.08*x))
plot(x,y,type="l", main="positive Gompertz")



ci95<-function(x){
	t.value<-qt(0.975,length(x)-1)
	standard.error<-se(x)
	ci<-t.value*standard.error
	cat("95% Confidence Interval = ", mean(x)-ci, "to", mean(x)+ci,"\n")
}



# Load database
library(RODBC)
channel <- odbcConnect("CPI", "jhe", "asta7720")

.libPaths("C:/Users/Josh/R/win-library/2.14")

Sys.getenv("R_LIBS")
Sys.setenv(R_LIBS="C:\Users\Josh\R\win-library\2.14")

.libPaths()
