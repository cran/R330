\name{chd.df}
\alias{chd.df}
\docType{data}
\title{
Coronary heart disease data
}
\description{
Shows the age of the subject and presence or absence of evidence of significant coronary heart disease.
}
\usage{data(chd.df)}
\format{
  A data frame with 100 observations on the following 2 variables:
  \describe{
    \item{\code{age}}{age of subject in years}
    \item{\code{chd}}{0 indicates CHD absent, 1 indicates it is present}
  }
}
\source{
Hosmer, and Lemeshow  Applied Logistic Regression,  pp 2-5
}
\references{
Hosmer, D. W., and Lemeshow, S. (2000). Applied Logistic Regression, Second edition, Wiley, New York.
}
\examples{
data(chd.df)
chd.glm<-glm(chd~age,family=binomial,data=chd.df)
summary(chd.glm)
}
\keyword{datasets}
