# Preliminary Packages astsa and forecast
# astsa: Applied Statistical Time Series Analysis
# forecast: Forecasting Functions for Time Series and Linear Models # Install astsa and forecast by
# install.packages("astsa")
# install.packages("forecast")
library("astsa")
library("forecast")
#
# Self-defined function for batch
# Ljung-box test in lag 6,12,18,24 and 30
#
batchBoxTest <-function(model){
      df=model$fit$arma
        K=df[1]+df[3]+df[4]+df[6]
          for(h in c(6,12,18,24,30)){
                  print(Box.test(model$fit$residuals,lag=h,fitdf=K))
                    }
}
#
# Data Exploration and Transformation
#
# Defining time series data and meantemp=ts(meantemp,freq=12,start=c(1997,1)) # display time plot, sample ACF
# and PACF of raw data plot(meantemp,type="b")
tsdisplay(meantemp)
# Display time plot, sample ACF
# and PACF of log transformation tsdisplay(log(meantemp))
14
# Display time plot, sample ACF
# and PACF of first common difference
tsdisplay(diff(meantemp,1))
# Display time plot, sample ACF
# and PACF of seasonal difference
tsdisplay(diff(meantemp,12))
#
# Model Diagnostics and Selection
#
# Fitting ARIMA(0,0,0)x(0,1,1) model and parameter estimation
sma1 <-sarima(meantemp,0,0,0,0,1,1,12,details = FALSE) (1-pnorm(abs(sma1$fit$coef)/sqrt(diag(sma1$fit$var.coef))))*2 sma1$fit
batchBoxTest(sma1)
# Fitting ARIMA(0,0,0)x(0,1,2) model and parameter estimation
sma2 <-sarima(meantemp,0,0,0,0,1,2,12,details = FALSE)
sma2$fit (1-pnorm(abs(sma2$fit$coef)/sqrt(diag(sma2$fit$var.coef))))*2 batchBoxTest(sma2)
# Fitting ARIMA(0,0,0)x(1,1,0) model and parameter estimation
sar1 <-sarima(meantemp,0,0,0,1,1,0,12,details = FALSE) (1-pnorm(abs(sar1$fit$coef)/sqrt(diag(sar1$fit$var.coef))))*2 sar1$fit
batchBoxTest(sar1)
# Fitting ARIMA(0,0,0)x(2,1,0) model and parameter estimation
sar2 <-sarima(meantemp,0,0,0,2,1,0,12,details = FALSE)
sar2$fit (1-pnorm(abs(sar2$fit$coef)/sqrt(diag(sar2$fit$var.coef))))*2 batchBoxTest(sar2)
# Fitting ARIMA(0,1,1)x(0,1,2) model and parameter estimation ma1sma1 <-sarima(meantemp,0,1,1,0,1,1,12,details = FALSE) ma1sma1$fit (1-pnorm(abs(ma1sma1$fit$coef)/sqrt(diag(ma1sma1$fit$var.coef))))*2 batchBoxTest(ma1sma1)
# Fitting ARIMA(0,1,1)x(0,1,1) model and parameter estimation ma1sma2 <-sarima(meantemp,0,1,1,0,1,2,12,details = FALSE) ma1sma2$fit (1-pnorm(abs(ma1sma2$fit$coef)/sqrt(diag(ma1sma2$fit$var.coef))))*2 batchBoxTest(ma1sma2)
#
# Forecasting
#
# Forecasting future 12 values by
# ARIMA(0,1,1)x(0,1,1) Model sarima.for(meantemp,12,0,0,0,0,1,1,12)
