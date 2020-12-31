#Seasonality R-code:
d=file.choose()
library(tseries)
data=ts(d)
data1=ts(as.vector(data),start=c(1994,1),end=c(2005,12), frequency =12)
dec=decompose(data1,type = "additive")
season=dec$season


#Application of augmented Dickey-Fuller test to our time-series data:
d=read.csv("C:/Users/USER/Desktop/ozone.csv", header = F)
library(tseries)
data=ts(d)
data1=ts(as.vector(data),start=c(1994,1),end=c(2005,12), frequency = 12)
adf.test(data1)

#HOLT-WINTERS method:
d=read.csv("C:/Users/USER/Desktop/ozone.csv", header = F)
library(tseries)
data=ts(d)
data1=ts(as.vector(data),start=c(1994,1),end=c(2005,12), frequency = 12)
h=HoltWinters(data1)
p=predict(h,n.ahead=12)

#ARMA:
read.csv("C:/Users/USER/Desktop/ozone.csv", header = F)
library(tseries)
data=ts(d)
data1=ts(as.vector(data),start=c(1994,1),end=c(2005,12), frequenc= 12)
arma= auto.arima(data1)
pred_arma=predict(arma,n.ahead = 12)




