% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotdensity.R
\name{plot.riverdensity}
\alias{plot.riverdensity}
\alias{plotriverdensity}
\title{Plot Kernel Density Using River Distance}
\usage{
\method{plot}{riverdensity}(
  x,
  whichplots = NULL,
  points = TRUE,
  bycol = TRUE,
  bylwd = TRUE,
  maxlwd = 10,
  pwr = 0.7,
  scalebyN = TRUE,
  ramp = "grey",
  lwd = 1,
  linecol = "black",
  denscol = "black",
  alpha = 1,
  dark = 1,
  showN = TRUE,
  main = NULL,
  xlab = "",
  ylab = "",
  add = FALSE,
  scalebar = TRUE,
  ...
)
}
\arguments{
\item{x}{A river density object created by \link{makeriverdensity}.}

\item{whichplots}{A vector of plots to produce, if multiple plots are 
produced.  For example, specifying \code{whichplot=c(2,3,4)} will result in
only the second, third, and fourth plots of the sequence being produced. 
Accepting the default (\code{NULL}) will result in all plots being 
produced.}

\item{points}{Whether to add the points used for density calculation. 
Defaults to \code{TRUE}.}

\item{bycol}{Whether to use a color ramp to show densities.  Defaults to 
\code{TRUE}.}

\item{bylwd}{Whether to use line thickness to show densities.  Defaults to 
\code{TRUE}.}

\item{maxlwd}{The maximum line width to use if \code{bylwd} is set to 
\code{TRUE}.  Defaults to 10.}

\item{pwr}{The power to use in the nonlinear transformation calculating the 
relative density values to be displayed (see above.)  Defaults to 0.7.}

\item{scalebyN}{Whether to display relative density values scaled by sample
size.  Specifying \code{scalebyN=TRUE} will show larger density values
associated with surveys with more points, and may be more appropriate for
displaying total density.  Specifying \code{scalebyN=FALSE} will allow
surveys with smaller sample sizes to be plotted with similar density values
as those with larger sample sizes, and may be more appropriate for
displaying relative density.  Defaults to \code{TRUE}.}

\item{ramp}{The color ramp used to display densities if \code{bycol} is set 
to \code{TRUE}.  Allowed values are \code{"grey"} (or \code{"gray"}), 
\code{"red"}, \code{"green"}, \code{"blue"}, \code{"heat"}, 
\code{"stoplight"}, and \code{"rainbow"}.  Defaults to \code{"grey"}.}

\item{lwd}{The line width to use for background lines if \code{bylwd} is set 
to \code{TRUE}, or all lines if \code{bylwd} is set to \code{FALSE}. 
Defaults to 1.}

\item{linecol}{The line color to use for background lines if \code{bylwd} is 
set to \code{TRUE}.  Defaults to \code{"black"}.}

\item{denscol}{The line color to use for showing density if \code{bylwd} is 
set to \code{TRUE}.  Defaults to \code{"black"}.}

\item{alpha}{The opacity value for lines.  This could potentially allow 
multiple density plots to be overlayed with different colors.}

\item{dark}{A color-saturation adjustment, with values in [0,1].  A value of 
1 uses the true colors, and a value less than 1 will render the colors as 
slightly darker (less saturated), which may be appear better.  Defaults to 
1.}

\item{showN}{Whether to automatically include the number of points used as 
part of the plot title(s).}

\item{main}{Plot title(s), either given as a single text string which is 
repeated if multiple plots are produced, or a vector of text strings (one 
for each plot produced).  If multiple plots are produced (resulting from 
multiple surveys), accepting the default (\code{NULL}) will result in each 
unique value of survey being used as the plot title, along with the sample 
size if \code{showN} is set to \code{TRUE}.}

\item{xlab}{X-axis label}

\item{ylab}{Y-axis label}

\item{add}{Whether to produce a new plot (\code{FALSE}), or add to an 
existing plot (\code{TRUE}).  Defaults to \code{FALSE}.}

\item{scalebar}{Whether to add a scale bar to plot(s).  Defaults to \code{TRUE}.}

\item{...}{Additional plotting parameters.}
}
\description{
Produces a kernel density plot from a kernel density object 
  created by \link{makeriverdensity}.
  
  If the kernel density object includes densities from multiple surveys, a 
  new plot will be created for each survey.
  
  Densities can be displayed using either line widths, color, or both.
  
  The relative densities that are displayed in the plot are calculated 
  according to the form (density/maxdensity)^pwr, with the value of pwr set 
  by the \code{pwr} argument.  Setting \code{pwr} to a value less than 1 
  allows smaller values to be more visible on the plot.
}
\examples{
data(Gulk, fakefish)

Gulk_dens <- makeriverdensity(seg=fakefish$seg, vert=fakefish$vert, rivers=Gulk, 
  survey=fakefish$flight.date)
  
# # 10 plots will be created, recommend calling par(mfrow=c(2,5))
plot(x=Gulk_dens)
}
\seealso{
\link{makeriverdensity}, \link{plotriverdensitypoints}
}
\author{
Matt Tyers
}
