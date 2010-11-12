\name{hard.hmac}
\Rdversion{0.1}
\alias{hard.hmac}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot clusters with different colors.  
}
\description{
Plot clusters with colors obtained from hard density. Plot one dimensional data with density plot. Plot two dimensional data with scatter plot. Pairwise scatter plot will be provided for data with more than two dimensions.
}
\usage{
hard.hmac(hmacobj,level=NULL, n.cluster=NULL,plot=TRUE,colors=1:6,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{hmacobj}{
The output of HMAC analysis. An object of class 'hmac'.
}


  	\item{level}{
    The specified level of HMAC output
  }
   	\item{n.cluster}{
The specified number of clusters. If neither \code{level} or
\code{n.cluster} are specified, hard clustering output is shown for each level.
}

     	
	\item{plot}{
Get the plot of the clusters with different colors. Default value is TRUE, draws a plot on the current graphics device; plot=FALSE indicates do not get the plot and returns the membership of data. 
}
	\item{colors}{
Colors used to represent different clusters.
}

  	\item{...}{
Further graphical parameters
  }
}
%


\value{
  Returns the membership of each observation of the specified level if plot=FALSE
  }
\seealso{
\code{\link{phmac}} for front end of using modal clustering and also for parallel implementation of modal clustering 
\code{\link{soft.hmac}} for soft clustering at specified levels.
See \code{\link{plot.hmac}}.
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
#disc2d.hmac is the output of phmac(disc2d,npart=1)

hard.hmac(disc2d.hmac,level=3)

#returns the membership of each observation
disc2d.2clus=hard.hmac(hmacobj=disc2d.hmac,n.cluster=2,plot=FALSE)
table(disc2d.2clus)

#hard.hmac(disc2d.hmac)

iris.hmac=phmac(iris[,-5])
# For more than two dimensions it produces the pairs plot
hard.hmac(iris.hmac,n.cluster=2)

 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster, hierarchical, nested, modal}
