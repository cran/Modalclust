\name{khat.inv}
\Rdversion{0.1}
\alias{khat.inv}
\alias{khat}
\alias{sdofnorm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the smoothing paramters for implementation of Modal Clustering.
}
\description{
these set of functions are based on the concept of pseudo degrees of
freedom (Lindsay et al 2008) and are used to calculate the Sigmas that are used for the 'hmac' function
}

\usage{
khat.inv(p,len=10)
sdofnorm(h,p)
khat(dof,p)
}


%- maybe also 'usage' for other objects documented here.
\arguments{

  	\item{len}{
Number of smoothing parameters.
}

 	\item{h}{
Smoothing parameter
}

  	\item{p}{
Number of column of data 
  }

 \item{dof}{
Degrees of freedom
} 
}
%
\seealso{
\code{\link{phmac}} for front end of using HMAC and also for parallel
implementation of modal clustering. 
}

\references{
  Lindsay, B.G., Markatou M., Ray, S., Yang, K., Chen, S.C. "Quadratic distances on
probabilities: the foundations," The Annals of Statistics Vol. 36,
No. 2, page 983--1006, 2008. 
}
%

\author{
Surajit Ray
}


