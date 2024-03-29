% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/riverdist_1.R
\name{trimriver}
\alias{trimriver}
\title{Trim a River Network Object to Specified Segments}
\usage{
trimriver(trim = NULL, trimto = NULL, rivers)
}
\arguments{
\item{trim}{Vector of line segments to remove}

\item{trimto}{Vector of line segments to keep}

\item{rivers}{The river network object}
}
\value{
A new river network object
}
\description{
Removes line segments from a river network object.  User can 
  specify which segments to remove (\code{trim}) or which segments to 
  keep (\code{trimto}).
}
\note{
Specifying segments in both trim and trimto arguments will result in an error.
}
\examples{
data(Kenai1)
plot(x=Kenai1)

Kenai1.trim <- trimriver(trim=c(46,32,115,174,169,114,124,142,80), rivers=Kenai1)
plot(x=Kenai1.trim)
 
Kenai1.trim.2 <- trimriver(trimto=c(20,57,118,183,45,162,39,98,19), rivers=Kenai1)
plot(x=Kenai1.trim.2)
}
\seealso{
\link{line2network}
}
\author{
Matt Tyers
}
