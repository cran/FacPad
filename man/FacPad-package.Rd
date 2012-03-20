\name{FacPad-package}
\alias{FacPad-package}
\alias{FacPad}
\docType{package}
\title{Sparse factor modeling for the inference of drug-responsive pathways}
\description{
This method tries to explain the gene-wise treatment response ratios in terms of
the latent pathways. It uses bayesian sparse factor modeling to infer the loadings 
(weights) of each pathway on its associated probesets as well as the latent factor
activity levels for each treatment.
}
\details{
\tabular{ll}{
Package: \tab FacPad\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-03-20\cr
License: \tab GPL (>= 2) \cr
LazyLoad: \tab yes\cr
}
install.packages("FacPad")
}
\author{
Haisu Ma<haisu.ma@yale.edu>
}
\keyword{ package }
\examples{

data(matrixY)
data(matrixL)
result<-gibbs_sampling(matrixY,matrixL,max_iter=30,
thin=10,file_name="test_30iter.RData")

}
