\name{FlexibleLagged-class}
\Rdversion{1.1}
\docType{class}
\alias{FlexibleLagged-class}
%\alias{[,FlexibleLagged,ANY-method}
%\alias{[,FlexibleLagged,missing-method}
%\alias{[<-,FlexibleLagged,missing-method}
%\alias{[<-,FlexibleLagged,numeric-method}

\title{Class FlexibleLagged}
\description{Class FlexibleLagged.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("FlexibleLagged", data, ...)}.
%%  ~~ describe objects here ~~
}
\section{Slots}{
  \describe{
    \item{\code{data}:}{Object of class \code{"Lagged"} ~~ }
  }
}
\section{Extends}{
Class \code{"\linkS4class{Lagged}"}, directly.
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "FlexibleLagged", i = "ANY")}: ... }
    \item{[}{\code{signature(x = "FlexibleLagged", i = "missing")}: ... }
    \item{[<-}{\code{signature(x = "FlexibleLagged", i = "missing")}: ... }
    \item{[<-}{\code{signature(x = "FlexibleLagged", i = "numeric")}: ... }
	 }
}
%\references{
%%%  ~~put references to the literature/web site here~~
%}
\author{Georgi N. Boshnakov}
%\note{
%%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{Lagged}},
\code{\linkS4class{Lagged1d}},
\code{\linkS4class{Lagged2d}},
\code{\linkS4class{Lagged3d}}
}
\examples{
showClass("FlexibleLagged")
}
\keyword{classes}
