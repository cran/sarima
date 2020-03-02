### R code from vignette source 'garch_tests_example.Rnw'

###################################################
### code chunk number 1: setup
###################################################
library("sarima")
options(prompt = "R> ")
Sys.setenv(TZ = "GMT")


###################################################
### code chunk number 2: setup
###################################################
library("fImport")
library("sarima")
library("fGarch")
options(prompt = "R> ")
Sys.setenv(TZ = "GMT")


###################################################
### code chunk number 3: garch_tests_example.Rnw:100-105
###################################################
## using a saved object, orginally imported with:
##  FMCC <- yahooSeries("FMCC", from = "2006-05-10", to = "2017-04-22",
##                         freq = "weekly")
FMCC <- readRDS(system.file("extdata", "FMCC.rds", package = "sarima"))
logreturns <- diff(log(FMCC$FMCC.Close))


###################################################
### code chunk number 4: garch_tests_example.Rnw:110-111
###################################################
plot(logreturns, type="l", main="Log-returns of FMCC")


###################################################
### code chunk number 5: garch_tests_example.Rnw:116-118
###################################################
FMCClr.acf <- autocorrelations(logreturns)
FMCClr.pacf <- partialAutocorrelations(logreturns)


###################################################
### code chunk number 6: garch_tests_example.Rnw:132-133
###################################################
plot(FMCClr.acf, data = logreturns)


###################################################
### code chunk number 7: garch_tests_example.Rnw:149-151
###################################################
plot(FMCClr.pacf, data = logreturns,
main="Partial Autocorrelation test of the log returns of FMCC")


###################################################
### code chunk number 8: garch_tests_example.Rnw:162-165
###################################################
wntLM <- whiteNoiseTest(FMCClr.acf, h0 = "iid", nlags = c(5,10,20),
                        x = logreturns, method = "LiMcLeod")
wntLM$test


###################################################
### code chunk number 9: garch_tests_example.Rnw:173-175
###################################################
wntg <- whiteNoiseTest(FMCClr.acf, h0 = "garch", nlags = c(5,10,15), x = logreturns)
wntg$test


###################################################
### code chunk number 10: garch_tests_example.Rnw:190-192
###################################################
fit1 <- garchFit(~garch(1,1), data = logreturns, trace = FALSE)
summary(fit1)


###################################################
### code chunk number 11: garch_tests_example.Rnw:203-205
###################################################
fit2 <- garchFit(~garch(1,1), cond.dist = c("sstd"), data = logreturns, trace = FALSE)
summary(fit2)


###################################################
### code chunk number 12: garch_tests_example.Rnw:210-211
###################################################
plot(fit2, which = 13)


###################################################
### code chunk number 13: garch_tests_example.Rnw:214-216
###################################################
fit3 <- garchFit(~aparch(1,1), cond.dist = c("sstd"), data = logreturns, trace = FALSE)
summary(fit3)


