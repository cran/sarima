### R code from vignette source 'white_noise_tests.Rnw'

###################################################
### code chunk number 1: setup
###################################################
library("sarima")
pd <- packageDescription("sarima")
options(prompt = "R> ")
Sys.setenv(TZ = "GMT")


###################################################
### code chunk number 2: white_noise_tests.Rnw:69-72
###################################################
n <- 100
ma2.model <- list(ma = c(0.56, -0.44))
xma2 <- arima.sim(ma2.model, n)


###################################################
### code chunk number 3: white_noise_tests.Rnw:78-80
###################################################
xma2.acf <- autocorrelations(xma2, maxlag = 8)
xma2.acf


###################################################
### code chunk number 4: white_noise_tests.Rnw:82-84
###################################################
xma2.pacf <- partialAutocorrelations(xma2, maxlag = 8)
xma2.pacf


###################################################
### code chunk number 5: white_noise_tests.Rnw:90-91
###################################################
ma2.model


###################################################
### code chunk number 6: white_noise_tests.Rnw:94-98
###################################################
xma2.tacf <- autocorrelations(ma2.model, maxlag = 8)
class(xma2.tacf)
xma2.tpacf <- partialAutocorrelations(ma2.model, maxlag = 8)
class(xma2.tpacf)


###################################################
### code chunk number 7: white_noise_tests.Rnw:104-105
###################################################
plot(xma2.acf)


###################################################
### code chunk number 8: white_noise_tests.Rnw:111-116
###################################################
n <- 5000
set.seed(124) # for reproducibility
x <- rgarch1p1(n, alpha = 0.3, beta = 0.55, omega = 1, n.skip = 1000)
x.acf <- autocorrelations(x)
x.pacf <- partialAutocorrelations(x)


###################################################
### code chunk number 9: white_noise_tests.Rnw:122-123
###################################################
plot(x.acf, data = x)


###################################################
### code chunk number 10: white_noise_tests.Rnw:133-134
###################################################
plot(x.pacf, data = x)


###################################################
### code chunk number 11: white_noise_tests.Rnw:138-140
###################################################
plot(x.acf, data = x, main = "Autocorrelation test")
## plot(x.pacf, data = x, main = "Partial autocorrelation test")


###################################################
### code chunk number 12: white_noise_tests.Rnw:156-163
###################################################
x.iid <- whiteNoiseTest(x.acf, h0 = "iid", nlags = c(5,10,20), x = x,
                        method = "LiMcLeod")
x.iid

x.iid2 <- whiteNoiseTest(x.acf, h0 = "iid", nlags = c(5,10,20), x = x,
                         method = "LjungBox")
x.iid2


###################################################
### code chunk number 13: white_noise_tests.Rnw:174-176
###################################################
x.garch <- whiteNoiseTest(x.acf, h0 = "garch", nlags = c(5,10,20), x = x)
x.garch


###################################################
### code chunk number 14: white_noise_tests.Rnw:181-183
###################################################
x.archtype <- whiteNoiseTest(x.acf, h0 = "arch-type", nlags = c(5,10,20), x = x)
x.archtype


