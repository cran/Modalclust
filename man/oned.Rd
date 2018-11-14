\name{oned}
\Rdversion{0.1}
\alias{oned}
\alias{oned.hmac}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One dimensional data with two main clusters
}
\description{
A one dimensional data and its hierarchical modal clustering with 2
main clusters
}


\usage{
data(oned)
data(oned.hmac)
}

\format{ \code{oned} is a one dimensional data with 2 main clusters and several subclusters.
  \code{oned.hmac} is an object of class 'hmac'
  obtained from applying \code{phmac} on  disc2d and disc3d respectively}
  


%


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
data(oned)
hist(oned,col="lavender",n=15)
data(oned.hmac)
plot(oned.hmac)
plot(oned.hmac,n.clust=2)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{data}

