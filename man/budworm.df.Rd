\name{budworm.df}
\alias{budworm.df}
\docType{data}
\title{
Budworm data
}
\description{
Data from a small experiment on the toxicity to the tobacco budworm
}
\usage{data(budworm.df)}
\format{
  A data frame with 12 observations on the following 4 variables:
  \describe{
    \item{\code{sex}}{the sex of the budworm}
    \item{\code{dose}}{amount of cypermethrin exposed to}
    \item{\code{s}}{number of budworms affected}
    \item{\code{n}}{total number of budworms}
  }
}
\details{
The data come from an experiment on the toxicity to the tobacco budworm Heliothis virescens of doses of the pyrethoid trans-cypermethrin to which the moths were beginning to show resistance. Batches of 20 moths of each sex were exposed for three days to the pyrethroid and the number in each batch that were dead or knocked down was recorded. 
}
\source{
Collette, D. (1991) Modelling Binary Data. Chapman and Hall, London.  p 75
}
\references{
Venables, W.N and Ripley, B. (2002) Modern Applied Statitics with S, Springer, New York.  

}
\examples{
data(budworm.df)
bugs.glm<-glm(s/n~sex+dose,family=binomial,weights=n,data=budworm.df)
summary(bugs.glm)
}
\keyword{datasets}
