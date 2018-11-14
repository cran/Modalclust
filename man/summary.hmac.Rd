\name{summary}
\Rdversion{0.1}
\alias{summary.hmac}
\alias{summary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Summary of HMAC output
}
\description{
Gives the summary of output of a 'hmac' object.
}
\usage{
\method{summary}{hmac}(object,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  	\item{object}{
The output of HMAC analysis. An object of class 'hmac'.
}
	
	\item{...}{
	  further arguments passed to or from other methods.
}

}
%
\seealso{
\code{\link{phmac}} for front end of using modal clustering and also for parallel
implementation of modal clustering. 
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
summary(disc2d.hmac)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{cluster, hierarchical, nested, modal}

