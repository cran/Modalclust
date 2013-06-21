\name{contour.hmac}
\Rdversion{0.1}
\alias{contour.hmac}
\alias{contour}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot clusters with different colors for two dimensional data overlayed
on the contours of the original data.  
}
\description{
Plot clusters for two dimensional data with contours of the original data
}
\usage{
\method{contour}{hmac}(x, n.cluster=NULL,level=NULL,prob=NULL,smoothplot=FALSE,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  	\item{x}{
The output of HMAC analysis. An object of class 'hmac'.
}
    	\item{level}{
The specified level
}
     	\item{n.cluster}{
The specified number of clusters. Either \code{level} or
\code{n.cluster} needs to be specified
}
	\item{prob}{
The specified level of the contour plot. Default value is NULL, plot all levels of the contour plot. Must be between 0 and 1
}
	
	\item{smoothplot}{
Get the smooth scatter plot of the original data set. Default value is FALSE, which does not provide the smooth scatter plot.
}

	\item{...}{
	  Further arguments passed to or from other methods.
}

}
%
\seealso{
\code{\link{phmac}} for front end of using modal clustering and also for parallel implementation of modal clustering.
\code{\link{soft.hmac}} for soft clustering at specified levels.
\code{\link{hard.hmac}} for hard clustering at specified levels.
See \code{\link{plot}} for plotting the whole dendrogram. 
}

\author{
Surajit Ray and Yansong Cheng
}
\references{
  Li. J, Ray. S, Lindsay. B. G, "A nonparametric statistical approach to
  clustering via mode identification," Journal of Machine Learning
  Research , 8(8):1687-1723, 2007.

  Lindsay, B.G., Markatou M., Ray, S., Yang, K., Chen, S.C. "Quadratic distances on
probabilities: the foundations," The Annals of Statistics Vol. 36,
No. 2, page 983--1006, 2008. 
}
%
\examples{
data(disc2d.hmac)
# disc2d.hmac is the output of phmac(disc2d,npart=1)

contour.hmac(disc2d.hmac,level=3,col=gray(0.7)) 

# Provide contour line at probability density 0.05.
contour(disc2d.hmac,n.cluster=2,prob=0.05) 

# Plot using smooth scatter plot.
contour.hmac(disc2d.hmac,n.cluster=2,smoothplot=TRUE) 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster, hierarchical, nested, modal}
