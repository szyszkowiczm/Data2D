###############################################################################
# Updated version of the R code for the analysis
###############################################################################

library(gnm)
options(digits=6)

# Read the data

data <-read.table("sim4datAB.csv", header=TRUE, sep=',')
summary(data)




# GENERATE 2-levelstarta
data$W2  <- as.factor(data$clust)
data$Year   <- as.factor(data$yr )
data$dowf    <- as.factor((data$dow))
data$stratum <- as.factor(data$Year:data$W2:data$dowf)



attach(data)
#################################################################
nameF="ResCW2Simu4.txt"
#
 sink(file=nameF, append=TRUE)
#
for (i in 1:250){
xi =2*i-1; yi=2*i
x=data [,xi]; y=data [,yi]

modG <- gnm(y ~x ,data=data, family=gaussian, eliminate=factor(stratum))


Beta=unname(summary(modG)$coeff[1,1])
SE= unname(summary(modG)$coeff[1,2])
#Pvalue=unname(summary(modG)$coeff[1,4])

  RES=c(i,Beta,SE); 
  print(RES)

 }  #next iteration
# 
sink(); print(i)
