\name{disc2d}
\Rdversion{0.1}
\alias{disc2d}
\alias{disc3d}
\alias{disc2d.hmac}
\alias{disc3d.hmac}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two and three dimensional data representing two half discs
}
\description{
Two and three dimensional data and their hierarchical modal clustering with 400 observations where the first two dimensions represent the shape of two discs. 
}


\usage{
data(disc2d)
data(disc2d.hmac)
data(disc3d)
data(disc3d.hmac)
}

\format{ disc2d and disc3d are two and three dimensional
  matrices. disc2d.hmac and disc3d.hmac are objects of class hmac
  obtained from applying \code{phmac} on  disc2d and disc3d respectively}
  
\details{
Two dimensional data with 400 observations representing the shape of two
half discs.   
}

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
data(disc2d)
plot(disc2d)
data(disc2d.hmac)
summary.hmac(disc2d.hmac)
hard.hmac(disc2d.hmac,n.clust=2)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{data}

