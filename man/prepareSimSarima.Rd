\name{prepareSimSarima}
\alias{prepareSimSarima}
\alias{print.simSarimaFun}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Prepare SARIMA simulations}
\description{Prepare SARIMA simulations.}
\usage{
prepareSimSarima(model, x = NULL, eps = NULL, n, n.start = NA,
                 xintercept = NULL, rand.gen = rnorm)

\S3method{print}{simSarimaFun}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{a list specifying the SARIMA model.}
  \item{x}{

    initial/before values of the time series, a list or a numeric
    vector, see Details.

  }
  \item{eps}{

    initial/before values of the innovations, a list or a numeric
    vector, see Details.

  }
  \item{n}{

    number of observations to generate, if missing an attempt is made to
    infer it from \code{x} and \code{eps}.

  }
  \item{n.start}{number of burin-in observations.
  }
  \item{xintercept}{

    non-constant intercept which may represent trend or covariate
    effects.

  }
  \item{rand.gen}{random number generator, defaults to N(0,1).}
  \item{...}{ignored.}
}
\details{

  \code{prepareSimSarima} does the preparatory work for simulation from
  a Sarima model, given the specifications and returns a function, which
  can be called as many times as needed.

  The variance of the innovations is specified by the model and the
  simulated innovations are multiplied by the corresponding standard
  deviation. So, it is expected that the random number generator
  simulates from a standardised distribution.

  \code{print.simSarimaFun} is a print method for the objects generated
  by \code{prepareSimSarima}.
}
\value{
  for \code{prepareSimSarima}, a function to simulate time series
}
%\references{
%%% ~put references to the literature/web site here ~
%}
%\author{
%%%  ~~who you are~~
%}
%\note{
%%%  ~~further notes~~
%}
%
%%% ~Make other sections like Warning with \section{Warning }{....} ~
%
%\seealso{
%%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
mo1 <- list(ar=0.9, iorder = 1, siorder = 1, nseasons = 4, sigma2 = 2)
fs1 <- prepareSimSarima(mo1, x = list(before = rep(0,6)),  n = 100)
tmp1 <- fs1()
plot(ts(tmp1))

fs2 <- prepareSimSarima(mo1, x = list(before = rep(1,6)),  n = 100)
tmp2 <- fs2()
plot(ts(tmp2))

mo3 <- mo1
mo3[["ar"]] <- 0.5
fs3 <- prepareSimSarima(mo3, x = list(before = rep(0,6)),  n = 100)
tmp3 <- fs3()
plot(ts(tmp3))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{simulation}
\keyword{arima}
\keyword{sarima}
% use one of  RShowDoc("KEYWORDS")







