\name{choose.cluster}
\Rdversion{0.1}
\alias{choose.cluster}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Choosing the cluster which is closest to a specified point
}
\description{
Choosing the cluster which is closest to a point specified by user. Works only for two dimensional data. 
}
\usage{
choose.cluster(hmacobj,x=NULL,level=NULL,n.cluster=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{hmacobj}{
The output of HMAC analysis. An object of class 'hmac'.
}
  \item{x}{
The user-specified location. Deafult value is NULL in which case user
chooses a point using the locator function.
}
  \item{level}{
    The specified level
  }
     \item{n.cluster}{
The specified number of clusters. Either \code{level} or
\code{n.cluster} needs to be specified
}
}
%

\seealso{
\code{\link{phmac}} for front end of using modal clustering and also for parallel implementation of modal clustering. 
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

choose.cluster(disc2d.hmac,x=c(0,0),level=3)
choose.cluster(disc2d.hmac,x=c(0,0),n.cluster=2)

# Users can choose anypoint they want by clicking the point 
# in the plot after the following command. 
# choose.cluster(disc2d.hmac,level=3)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster, hierarchical, nested, modal}
