\name{imgnoise}
\alias{imgnoise}
\title{imgnoise}
\usage{imgnoise(image, noise_type)
}
\description{
Generates statistical noise that can be gaussian, speckle,salt & pepper, or uniform
}
\examples{
imgnoise(matrix(rep(c(1,2),5), nrow = 2), gaussian)
}
