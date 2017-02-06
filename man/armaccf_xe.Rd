\name{armaccf_xe}
\alias{armaccf_xe}
\alias{armaacf}
\title{Crosscovariances of ARMA process and its innovations}
\description{

  Crosscovariances of ARMA process and its innovations.

}
\usage{
armaccf_xe(model, lag.max = 1)
armaacf(model, lag.max)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{model}{the model, a list with components ar, ma and sigma2.}
  \item{lag.max}{maximal lag for the result.}
}
\details{

  Given an ARMA model, \code{armaccf_xe} computes theoretical
  crosscovariances between the ARMA process and its innovations.  This
  is a simple illustration of the equations I give in my time series
  course.

  \code{armaacf} computes ARMA autocovariances. It is unfinished and
  actually redundant. Currently I use it for testing (There is a
  \code{browser()} statement just before return.

%%  ~~ If necessary, more details than the description above ~~
}
\value{
  for \code{armaccf_xe}, the crosscovariances for lags 0, ..., maxlag.

  for \code{armaacf}, the autocovariances
}
%\references{
%%% ~put references to the literature/web site here ~
%}
%\author{
%%%  ~~who you are~~
%}
\note{
  The built-in R function \code{ARMAacf} computes autocorrelations,
  not the autocovariances.
}
%
%%% ~Make other sections like Warning with \section{Warning }{....} ~
%
%\seealso{
%%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
% use one of  RShowDoc("KEYWORDS")

