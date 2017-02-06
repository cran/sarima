\name{filterCoef}
\alias{filterCoef}
\alias{filterOrder}
\alias{filterPoly}
\alias{filterPolyCoef}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{

  Coefficients and other basic properties of filters

}
\description{

  Coefficients and other basic properties of filters.
  
}
\usage{
filterCoef(object, convention, \dots)

filterOrder(object, \dots)

filterPoly(object, \dots)

filterPolyCoef(object, lag_0 = TRUE, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{object.}
  \item{convention}{convention for the sign.}
  \item{lag_0}{if FALSE, drop the constant term.}
  \item{\dots}{further arguments for methods.}
}
\details{

  Generic functions to extract basic properties of filters:
  \code{filterCoef} returns coefficients,
  \code{filterOrder} returns the order, 
  \code{filterPoly}, returns the characteristic polynomial,
  \code{filterPolyCoef} gives the coefficients of the characteristic
  polynomial.

  What exactly is returned depends on the specific filter classes, see
  the description of the corresponding methods. For the core filters,
  the values are as can be expected. For "ArmaFilter", the value is a
  list with components "ar" and "ma" giving the requested property for the
  corresponding part of the filter. Similarly, for "SarimaFilter" the
  values are lists, maybe with additional quantities.
}
\value{
  the requested property as described in Details.
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
\keyword{ ~kwd1 }
