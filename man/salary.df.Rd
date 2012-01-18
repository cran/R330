\name{salary.df}
\alias{salary.df}
\docType{data}
\title{
Study of Supervisor Performance
}
\description{
A survey of the clerical employment of a large financial organisation included questions related to employee satisfaction with their supervisors, designed to determine the overall effectiveness of the supervisor
}
\usage{data(salary.df)}
\format{
  A data frame with 31 observations on the following 6 variables:
  \describe{
    \item{\code{X1}}{Handles employee conplaints}
    \item{\code{X2}}{Does not allow special privileges}
    \item{\code{X3}}{Opportunity to learn new things}
    \item{\code{X4}}{Raises based on performances}
    \item{\code{X5}}{Too critical of poor performances}
    \item{\code{Y}}{Overall rating of job being done by supervisor}
  }
}
\source{
S. Chatterjee, A.S. Hadi and B. Price, Regression Analysis by Example,  p56
}
\references{
S. Chatterjee, A.S. Hadi and B. Price, (2000). Regression Analysis by Example (3rd Ed), Wiley, New York. 
}
\examples{
data(salary.df)
salary.lm<-lm(Y~X1+X2+X3+X4+X5,data=salary.df)
resids<-residuals(salary.lm)
pred<-fitted.values(salary.lm)
plot(pred,resids,type="n")
ncases<-length(resids)
text(pred,resids,1:ncases)
}
\keyword{datasets}
