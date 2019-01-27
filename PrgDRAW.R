###############################################################################
# Updated version of the R code for the analysis
###############################################################################


# Read the data

data <-read.table("ResD2Simu1234.csv", header=TRUE, sep=',')
summary(data)

attach(data)

plot(SampleN, Beta1,ylim=c(0.95,0.99),pch=0)
points(SampleN, Beta2,pch=20)
points(SampleN, Beta3,pch=1)
points(SampleN, Beta4,pch=2)




data <-read.table("ResD3Simu1234.csv", header=TRUE, sep=',')
summary(data)

attach(data)

plot(SampleN, Beta1,ylim=c(0.94,0.99),pch=0)
points(SampleN, Beta2,pch=20)
points(SampleN, Beta3,pch=1)
points(SampleN, Beta4,pch=2)





data <-read.table("ResW2Simu1234.csv", header=TRUE, sep=',')
summary(data)

attach(data)

plot(SampleN, Beta1,ylim=c(0.75,0.90),pch=0)
points(SampleN, Beta2,pch=20)
points(SampleN, Beta3,pch=1)
points(SampleN, Beta4,pch=2)



data <-read.table("ResCW2Simu1234.csv", header=TRUE, sep=',')
summary(data)

attach(data)

plot(SampleN, Beta1,ylim=c(0.74,0.87),pch=0)
points(SampleN, Beta2,pch=20)
points(SampleN, Beta3,pch=1)
points(SampleN, Beta4,pch=2)







