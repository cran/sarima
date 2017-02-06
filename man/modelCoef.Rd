\name{modelCoef}
\alias{modelCoef}
\title{Get the coefficients of models}
\description{
  Get the coefficients of an object, optionally specifying
  the expected format.
}
\usage{
modelCoef(object, convention, ...)
}
\arguments{
  \item{object}{an object.}
  \item{convention}{
    the convention to use for the return value, a character string or any
    object from a supported class, see Details.
  }
  \item{\dots}{not used, further arguments for methods.}
}
\details{

  \code{modelCoef} is a generic function for extraction of coefficients
  of model objects. What `coeffcients' means depends on the class of
  \code{object} but it can be changed with the optional argument
  \code{convention}

  The one-argument form, \code{modelCoef(object)}, gives the
  coefficients of \code{object}. In effect, it defines the meaning of
  `coefficients' for the purposes of \code{modelCoef}.

  Argument \code{convention} can be used to specify what kind of value
  to return.

  If \code{convention} is not a character string, only its
  class is used and the value will have the format and meaning of the
  value that would be returned by a call \code{modelCoef(convention)}.

  If \code{convention} is a character string, it is typically the name
  of a class. In this case \code{modelCoef(object, "someclass")} is
  equivalent to \code{modelCoef(object, new("someclass"))}. For some
  classes of \code{object} character values other than names of classes
  may be supported.

}
\value{
  the value is defined by the methods as described in Details
}
% \references{
% %% ~put references to the literature/web site here ~
% }
% \author{
% %%  ~~who you are~~
% }
% \note{
% %%  ~~further notes~~
% }
%
% %% ~Make other sections like Warning with \section{Warning }{....} ~
%
% \seealso{
% %% ~~objects to See Also as \code{\link{help}}, ~~~
% }
% \examples{
% }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
% use one of  RShowDoc("KEYWORDS")
