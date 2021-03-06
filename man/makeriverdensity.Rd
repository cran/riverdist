% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotdensity.R
\name{makeriverdensity}
\alias{makeriverdensity}
\title{Calculate Kernel Density Using River Distance}
\usage{
makeriverdensity(
  seg,
  vert,
  rivers,
  survey = NULL,
  kernel = "gaussian",
  bw = NULL,
  resolution = NULL
)
}
\arguments{
\item{seg}{A vector of river locations (segment)}

\item{vert}{A vector of river locations (vertex)}

\item{rivers}{The river network object to use}

\item{survey}{A vector of survey IDs corresponding to the values of 
\code{seg} and \code{vert}.  If this argument is used, kernel densities 
will be calculated for each unique survey, and separate plots will be 
produced.}

\item{kernel}{The type of density kernel to use.  Allowed types are 
\code{"gaussian"} (normal) and \code{"rect"} (rectangular, giving simple 
density).  Defaults to \code{"gaussian"}.}

\item{bw}{The kernel bandwidth to use.  If \code{kernel} is set to 
\code{"gaussian"}, this provides the standard deviation of the gaussian 
(normal) kernel to use.  If \code{kernel} is set to \code{"rect"}, this 
provides the half-width of the rectangular kernel, or the distance to use 
in simple density.  Accepting the default (\code{NULL}) will result in the 
function determining a value to use, based on the total length of the river
network and the value of the \code{resolution} argument.}

\item{resolution}{The approximate spacing of the river locations used for
kernel density calculation.  Accepting the default (\code{NULL}) will
result in the function determining a value to use, based on the total
length of the river network.}
}
\value{
A river density object, see \link{riverdensity-class}.
}
\description{
Uses spatial point data (segment and vertex) to calculate a 
  kernel density object to use in the output class plotting method,\link{plot.riverdensity}. Scaled kernel 
  density is calculated at approximately regularly-spaced locations, with 
  spacing specified by the user.
  
  If an argument is used in the \code{survey} field, kernel densities will be
  calculated for each unique value of \code{survey}, resulting in a separate 
  plot for each.
  
  The purpose of this function is to generate a kernel density object to plot
  using plot(), see \link{plot.riverdensity}.
}
\note{
It is likely that calculation will be very slow.  Use of this function 
  with a river network for which segment routes has not yet been calculated 
  is not recommended.

This function is distance-computation intensive, and may be slow-running if a river network is used that does not have segment routes and/or distance lookup tables for fast distance computation.  See \link{buildsegroutes} and/or \link{buildlookup} for more information.
}
\examples{
data(Gulk, fakefish)

Gulk_dens <- makeriverdensity(seg=fakefish$seg, vert=fakefish$vert, rivers=Gulk, 
  survey=fakefish$flight.date)
  
# # 10 plots will be created, recommend calling par(mfrow=c(2,5))
plot(x=Gulk_dens)
}
\seealso{
\link{plot.riverdensity}, \link{plotriverdensitypoints}
}
\author{
Matt Tyers
}
