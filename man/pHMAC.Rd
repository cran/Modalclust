\name{phmac}
\Rdversion{1.1}
\alias{phmac}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Main function for performing Modal Clusters  either parallel or serial mode. 
}
\description{
Performing Modal Clustering
}
\usage{
phmac(dat, length = 10, npart = 1, parallel = TRUE, sigmaselect = NULL,
G= NULL)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
Matrix of data points
}
\item{length}{
number of smoothing levels. Default is 10}
\item{sigmaselect}{
Specified Smoothing levels. Default NULL will calculate the Sigma
levels using concept of spectral degrees of freedom given in Lindsay et
al (2008)}
\item{npart}{ Number of random partitions when using parallel
  computing. If using several processors of a machine one option is to
  choose the number of partitions equal to the number of processors }

\item{parallel}{ If TRUE uses parallel comptation using \code{npart}
  processors. Requires the package \code{multicore} to perform parallel computing
}

 \item{G}{
Specified values of modes. A matrix with number or rows equal to the
number of modes and number of columns equal to the dimension of the
data. Defualt value is NULL 
}

}
\value{
\item{data}{Same as the input Data}
\item{n.cluster}{Number of clusters at each level.} 
\item{level}{Levels corresponding to each smoothing parameter.}
\item{sigmas}{Same as input sigmaselect if provided or dynamically
calculated smoothing levels based on Spectral Degrees of Freedom
criterion. Uses the function khat.inv}
\item{mode}{List of modes at each distinct levels.}     
\item{membership}{List of memmbership to modes at each distinct levels.}
}
\seealso{
\code{\link{soft.hmac}} for soft clustering at specified levels.
\code{\link{hard.hmac}} for hard clustering at specified levels.
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
\examples{

data(disc2d)
disc2d.hmac=phmac(disc2d,npart=1)
plot.hmac(disc2d.hmac,level=2)

## For parallel implementation
disc2d.hmac.parallel=phmac(disc2d,npart=4,parallel=TRUE)

soft.hmac(disc2d.hmac,level=2)
soft.hmac(disc2d.hmac,n.cluster=3)

hard.hmac(disc2d.hmac,n.cluster=3)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster, hierarchical, nested, modal}
