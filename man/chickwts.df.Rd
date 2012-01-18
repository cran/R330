\name{chickwts.df}
\alias{chickwts.df}
\docType{data}
\title{
Chicken Weights Data
}
\description{
An experiment comparing 12 methods of feeding chickens was done independently in two replicaes arranged in different houses
}
\usage{data(chickwts.df)}
\format{
  A data frame with 24 observations on the following 4 variables:
  \describe{
    \item{\code{chickweight}}{weight gain}
    \item{\code{protein}}{form of protien, either groundnut or soyabean}
    \item{\code{protlevel}}{level of protein either 0, 1 or 2}
    \item{\code{fish}}{level of fish solubles, either high or low}
  }
}

\source{
John, J.A. and Quenouille, M.H. (1977). Experiments: Design and Analysis, 2nd edn. London: Griffin.
}
\references{
Cox, D. R. & Snell, E. J. (1981). Applied Statistics: Principles and Examples. Chapman and Hall, London.
}
\examples{
data(chickwts.df)
model1<-lm(chickweight~protein*protlevel*fish, data=chickwts.df)
summary(model1)

}
\keyword{datasets}
