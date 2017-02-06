\name{SarimaModel-class}
\Rdversion{1.1}
\docType{class}
\alias{SarimaModel-class}
% \alias{modelCoef,SarimaModel,ArFilter-method}
% \alias{modelCoef,SarimaModel,ArmaFilter-method}
% \alias{modelCoef,SarimaModel,character-method}
% \alias{modelCoef,SarimaModel,MaFilter-method}
% \alias{modelCoef,SarimaModel,missing-method}
% \alias{modelCoef,SarimaModel,SarimaFilter-method}
% \alias{modelOrder,SarimaModel,ArFilter-method}
% \alias{modelOrder,SarimaModel,ArmaFilter-method}
% \alias{modelOrder,SarimaModel,ArmaModel-method}
% \alias{modelOrder,SarimaModel,ArModel-method}
% \alias{modelOrder,SarimaModel,MaFilter-method}
% \alias{modelOrder,SarimaModel,MaModel-method}
% \alias{modelOrder,SarimaModel,missing-method}
% \alias{modelPolyCoef,SarimaModel,ArmaFilter-method}
% \alias{modelPolyCoef,SarimaModel,missing-method}
% \alias{modelPoly,SarimaModel,ArmaFilter-method}
% \alias{modelPoly,SarimaModel,missing-method}

\title{Class SarimaModel in package sarima}
\description{Class SarimaModel in package sarima.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("SarimaModel", ..., ar, ma, sar, sma)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{center}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{intercept}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{sigma2}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{nseasons}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{iorder}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{siorder}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{ar}:}{Object of class \code{"BJFilter"} ~~ }
    \item{\code{ma}:}{Object of class \code{"SPFilter"} ~~ }
    \item{\code{sar}:}{Object of class \code{"BJFilter"} ~~ }
    \item{\code{sma}:}{Object of class \code{"SPFilter"} ~~ }
  }
}
\section{Extends}{
Class \code{"\linkS4class{VirtualFilterModel}"}, directly.
Class \code{"\linkS4class{SarimaSpec}"}, directly.
Class \code{"\linkS4class{SarimaFilter}"}, by class "SarimaSpec", distance 2.
Class \code{"\linkS4class{VirtualSarimaFilter}"}, by class "SarimaSpec", distance 3.
Class \code{"\linkS4class{VirtualCascadeFilter}"}, by class "SarimaSpec", distance 4.
Class \code{"\linkS4class{VirtualMonicFilter}"}, by class "SarimaSpec", distance 5.
}
\section{Methods}{
  \describe{
    \item{modelCoef}{\code{signature(object = "SarimaModel", convention = "ArFilter")}: ... }
    \item{modelCoef}{\code{signature(object = "SarimaModel", convention = "ArmaFilter")}: ... }
    \item{modelCoef}{\code{signature(object = "SarimaModel", convention = "character")}: ... }
    \item{modelCoef}{\code{signature(object = "SarimaModel", convention = "MaFilter")}: ... }
    \item{modelCoef}{\code{signature(object = "SarimaModel", convention = "missing")}: ... }
    \item{modelCoef}{\code{signature(object = "SarimaModel", convention = "SarimaFilter")}: ... }
    \item{modelOrder}{\code{signature(object = "SarimaModel", convention = "ArFilter")}: ... }
    \item{modelOrder}{\code{signature(object = "SarimaModel", convention = "ArmaFilter")}: ... }
    \item{modelOrder}{\code{signature(object = "SarimaModel", convention = "ArmaModel")}: ... }
    \item{modelOrder}{\code{signature(object = "SarimaModel", convention = "ArModel")}: ... }
    \item{modelOrder}{\code{signature(object = "SarimaModel", convention = "MaFilter")}: ... }
    \item{modelOrder}{\code{signature(object = "SarimaModel", convention = "MaModel")}: ... }
    \item{modelOrder}{\code{signature(object = "SarimaModel", convention = "missing")}: ... }
    \item{modelPolyCoef}{\code{signature(object = "SarimaModel", convention = "ArmaFilter")}: ... }
    \item{modelPolyCoef}{\code{signature(object = "SarimaModel", convention = "missing")}: ... }
    \item{modelPoly}{\code{signature(object = "SarimaModel", convention = "ArmaFilter")}: ... }
    \item{modelPoly}{\code{signature(object = "SarimaModel", convention = "missing")}: ... }
	 }
}
%\references{
%%%  ~~put references to the literature/web site here~~
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
\seealso{
  \code{\linkS4class{ArmaModel}}
}
\examples{
new("SarimaModel", nseasons = 12)
new("SarimaModel", nseasons = 12, intercept = 3)
new("SarimaModel", ar = 0.9, nseasons = 12, intercept = 3)
new("SarimaModel", ar = 0.9, sar= 0.8, nseasons = 12, intercept = 3)

showClass("SarimaModel")
}
\keyword{classes}
