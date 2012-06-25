\name{gibbs2}
\alias{gibbs2}
\title{A Collapsed Gibbs Sampling Algorithm for the Inference 
of Sparse Bayesian Factor Models_version2}
\description{In each iteration, the algorithm iteratively 
updates each entry in the binary matrix Z, loading matrix W 
and factor activity matrix X, as well as other model parameters.}
\usage{
gibbs2(matrixY, matrixL,eta0,eta1,alpha_tau = 1, 
beta_tau = 0.01, tau_sig = 1, max_iter = 10000, 
thin = 10, alpha_sigma = 0.7, beta_sigma = 0.3, file_name)
}


\arguments{
  \item{matrixY}{The input treatment response matrix. It has dimension 
G by J,where G is the number of probesets and J is the number of different 
treatments. The (g,j)-th entry represents the ratio of the expression of the
g-th probeset after and before the j-th treatment.}
  \item{matrixL}{The binary probeset-pathway association matrix.It has 
dimension G by K. If the (g,k)-th entry has value 1, it indicates that the
g-th probeset is involved in the k-th pathway; and the (g,k)-th entry 
takes value 0 if there is no association relationship.
}

  \item{eta0}{The bernoulli probability of entries in matrix Z taking
              a non-zero value given that the corresponding entry in
              matrix L is zero}
  \item{eta1}{The bernoulli probability of entries in matrix Z taking
              the value zero given that the corresponding entry in
              matrix L is one}
  \item{alpha_tau}{The alpha parameter of Gamma distribution 
   used for the simulation of noise, default value=1}
  \item{beta_tau}{The beta parameter of Gamma distribution used 
                  for the simulation of noise, default value=0.01}
  \item{tau_sig}{Pre-defined precision of each entry in the factor 
                 loadings matrixW, default value=0}
  \item{max_iter}{The number of iterations of the collaped
                  Gibbs sampling algorithm, default=10000}
  \item{thin}{The number of iteration cycle for the record of
              Gibbs samples. For the convenience of storage, the
              result of the Gibbs sampling will be kept every other
              "thin" iterations to alliviate the auto-correlation
              problem between adjacent interations of the Gibbs
              sampling process}
  \item{alpha_sigma}{the alpha parameter for the Gamma prior for matrixW}
  \item{beta_sigma}{The beta parameter for the Gamma prior 
              for matrixW}
  \item{file_name}{name of the file saving the result}
}

\value{
The algorithm will store the inferred binary indicator matrix Z,
loading matrix W and factor activity matrix X 
(as well as tau_g if not pre-difined) in each thinned iteration 
and write them into .RData file with name defined by the user.
}

\author{Haisu Ma<haisu.ma@yale.edu>}

\examples{

data(matrixY)
data(matrixL)
result<-gibbs2(matrixY,matrixL,eta0=0.2,eta1=0.2,
max_iter=50,thin=10,file_name="test_v2_50iter.RData")

}