\name{matrixL}
\alias{matrixL}
\docType{data}
\title{Pathway structure matrix L}
\description{A binary matrix of dimension G by K. Entries of 1 indicate 
the presence of a probeset-pathway association relationship, whereas 
entries of 0 indicate the opposite.}
\usage{data(matrixL)}
\format{
  The format is:
 num [1:50, 1:5] 0 0 0 0 1 0 0 0 0 1 ...
}
\details{matrix L determines the sparsity strcuture of the loading matrix W.
The binary association information can be extracted from many pathway databases,
such as KEGG, BioCarta, etc.}
\examples{
data(matrixL)
}
\keyword{datasets}
