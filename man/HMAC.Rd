\name{hmac}
\Rdversion{0.1}
\alias{hmac}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Perform Modal Clustering in serial mode only
}
\description{
Performs  Modal Cluster with specified smoothing paramters. Used as a sub function of \code{\link{phmac}}. 
}
\usage{
hmac(dat,Sigmas,G=NULL,member=NULL)


}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
Matrix of data points
}
  \item{Sigmas}{
Specified smoothing levels
}
  \item{G}{
Specified values of modes. A matrix with number of rows equal to the
number of modes and number of columns equal to the dimension of the
data. Defualt value is NULL 
}


  \item{member}{
Membership of the observations to the modes given in G. Default value is NULL
}

}
%
\value{
\item{data}{Same as the input dat.}
\item{n.cluster}{Number of clusters at each level.} 
\item{level}{Levels corresponding to each smoothing parameter.}
\item{Sigmas}{Same as input sigmas.}
\item{mode}{List of modes at each distinct levels.}     
\item{membership}{List of memmbership to modes at each distinct levels.}
}
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

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster, hierarchical, nested, modal}
