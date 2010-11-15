\name{plot.hmac}
\Rdversion{0.1}
\alias{plot.hmac}
\alias{plot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plots of heierarchical tree for a 'hmac' object
}
\description{
Plots the dendrogram of the entire heierarchical tree for a 'hmac'
object starting from any specified smoothing level.
}
\usage{
\method{plot}{hmac}(x,mycol=1:6,level=1,n.cluster=NULL,userclus=NULL,sep=.1,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
The output of HMAC analysis. An object of class 'hmac'.
}

   \item{mycol}{
Colors used to represent different clusters.
}

  \item{level}{
The specified level that dendrogram starts. Default value is 1.
  }
   	\item{n.cluster}{
The specified number of clusters. If neither \code{level} nor
\code{n.cluster} is specified, the full tree is plotted.
}

  
  \item{userclus}{
If user provides membership, the tree colors the node according to this
membership and the tree can be used for validation.
  }   
   \item{sep}{
It provides the distance between the lowest layer of nodes of the clusters. 
}
   \item{...}{
further arguments passed to or from other methods.
}


}
%

\seealso{
\code{\link{phmac}} for front end of using modal clustering and also for parallel implementation of modal clustering. 
\code{\link{hard.hmac}} for hard clustering at specified levels.
\code{\link{soft.hmac}} for soft clustering at specified levels.
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
plot(disc2d.hmac)

set.seed(20)
mix4=data.frame(rbind(rmvnorm(20,rep(0,4)), rmvnorm(20,rep(2,4)),rmvnorm(20,rep(10,4)),rmvnorm(20,rep(13,4))))
mix4.hmac=phmac(mix4,npart=1)
plot(mix4.hmac,col=1:6)

# Verifying with user provided groups
plot(mix4.hmac,userclus=rep(c(1,2,3,4),each=20),col=1:6)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster, hierarchical, nested, modal}
