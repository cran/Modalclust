\name{mydmvnorm}
\Rdversion{0.1}
\alias{mydmvnorm}
\alias{dmvnorm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate Density of Multivariate Normal for diagonal covariance
}
\description{
Faster calculation of density of multivariate normal with
diagonal covariance matrix
}
\usage{
mydmvnorm(x, mean, sigmasq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  	\item{x}{
The input data
}
  	\item{mean}{
The vector of mean values
}
   	\item{sigmasq}{
The variance of each dimension. Assume the variance are the same for all dimensions.
}

}

\author{
Surajit Ray and Yansong Cheng
}

