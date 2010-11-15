\name{soft.hmac}
\Rdversion{0.1}
\alias{soft.hmac}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot soft clusters from Modal Clustering output 
}
\description{
Plot clusters for two dimensional data with colors representing the
posterior probability of belonging to clusters. Additionally  boundary
points between the clusters, with specified thresholds are also  
}
\usage{
soft.hmac(hmacobj,n.cluster=NULL,level=NULL,boundlevel=0.4,plot=TRUE)
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
The specified number of clusters. If neither \code{level} nor
\code{n.cluster} is specified, soft clustering output is shown for each level.
}
	\item{boundlevel}{ 
Posterior probability threshold. Points havings posterior probability below \code{boundlevel} are assigned as boundary points and colored in gray. Default value is 0.4.
}
	\item{plot}{
Get the two dimensional plot of the clusters with different
colors. Default value is TRUE, which returns the two dimensional  plot on the
current graphics device; plot=FALSE  returns the posterior probability of each observation. 
}

}
%

\value{
  Returns the list that contains the posterior probability of each observation and boundary points at specified
  level if plot=FALSE
  }
\seealso{
\code{\link{phmac}} for front end of using modal clustering and also for parallel implementation of modal clustering
\code{\link{hard.hmac}} for hard clustering at specified levels.
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
data(logcta20.hmac)
#logcta20.hmac is the output of phmac(logcta20,npart=1)

soft.hmac(logcta20.hmac,n.cluster=3)

#return the posterior probability of each observation and boundary points.
postprob=soft.hmac(hmacobj=logcta20.hmac,n.cluster=3,plot=FALSE) 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster, hierarchical, nested, modal}
