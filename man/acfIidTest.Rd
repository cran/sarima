\name{acfIidTest}
\alias{acfIidTest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Carry out Ljung-Box test from sample autocorrelations}
\description{Carry out tests for IID from sample autocorrelations.}
\usage{
acfIidTest(acf, n, npar = 0, nlags = npar + 1, method, interval = 0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{acf}{autocorrelations.}
  \item{n}{length of the corresponding time series.}
  \item{npar}{number of df to subtract.}
  \item{nlags}{

    number of autocorrelations to use for the portmonteau
    statistic, Can be a vector to request several such statistics.
  }
  \item{method}{
    a character string, one of "LiMcLeod", "LjungBox" or "BoxPierce".
  }
  \item{interval}{

    if TRUE, compute also conffidence intervals under the
    null hypothesis of independence.

  }
}
%\details{
%%%  ~~ If necessary, more details than the description above ~~
%}
\value{
  a list with components "test" and (if requested) "ci".
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
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ts}
\keyword{htest}
% use one of  RShowDoc("KEYWORDS")
