\name{Lagged-class}
\Rdversion{1.1}
\docType{class}
\alias{Lagged-class}
%\alias{[,Lagged,missing-method}
%\alias{[,Lagged,numeric-method}
%\alias{[<-,Lagged,numeric-method}
%\alias{maxLag,Lagged-method}
\alias{[[,Lagged,numeric-method}
\alias{[[<-,Lagged,numeric-method}

\title{Class Lagged}
\description{Class Lagged.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("Lagged", ...)}.
%%  ~~ describe objects here ~~

This class is meant to serve as base class for objects with natural
indexing starting from zero.



Arithmetic and other operations are also defined. They return objects
strictly from class "Lagged", i.e., even if the arguments are from
classes inheriting from "Lagged". Of course, for such classes
specialised methods can be defined to keep the class when appropriate.
For example, the some of two autocovariance functions is an
autocovariance function, but their difference may not be a valid one.

Further, in arithmetic operations, the recycling rule is applied only
when one of the arguments is a scalar. Otherwise, the arguments are made
of equal length by filling in NA's.

}
\section{Slots}{
  \describe{
    \item{\code{data}:}{Object of class \code{"ANY"} ~~ }
  }
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "Lagged", i = "missing")}:
      In this case (i.e., \code{i} is missing) \code{[]}, returns the
      underlying data. This is equivalent to using
      \code{x[1:maxLag(x)]}. 
    }
    %\item{[}{\code{signature(x = "Lagged", i = "numeric")}:
    %
    %  Subscripting (with one index) is defined naturally. It returns the
    %  suitably subscripted \code{data} slot. Note that the returned
    %  value is not from class "Lagged" but from that of the data slot
    %  (in package \pkg{sarima} this is \code{"numeric"} or
    %  \code{"array"}.  For indices larger than the maximal lag the
    %  values are NA.
    %
    %  Currently negative indices work similarly to the standard R
    %  indexing in that negative indices are used to drop
    %  elements. However, for \eqn{k>0}, using \eqn{-k} as an index drops
    %  the element for lag \eqn{k-2}, not \eqn{k} (since the subsetting
    %  is done by something like \code{x@data[i+1]}). This may be changed
    %  and should not bee relied upon.
    %  
    %}
    \item{[<-}{\code{signature(x = "Lagged", i = "numeric")}:

      Replace the values for the specified indices with the new
      values. This works as in base R with recycling and warnings
      if the lengths do not match.
      
    }

    \item{maxLag}{\code{signature(object = "Lagged")}:

      Gives the maximal lag in the object. 

    }
  
    \item{[[}{\code{signature(x = "Lagged", i = "numeric")}: ... }
    \item{[[<-}{\code{signature(x = "Lagged", i = "numeric")}: ... }
    %\item{[<-}{\code{signature(x = "Lagged", i = "missing")}: ... }
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
%\seealso{
%%%  ~~objects to See Also as \code{\link{~~fun~~}}, ~~~
%%%  ~~or \code{\linkS4class{CLASSNAME}} for links to other classes ~~~
%}
%\examples{
%showClass("Lagged")
%}
\keyword{classes}


