\name{educ.df}
\alias{educ.df}
\docType{data}
\title{
Educations expenditure data
}
\description{
Data set from 50 US states on education expenditure
}
\usage{data(educ.df)}
\format{
  A data frame with 50 observations on the following 4 variables:
  \describe{
    \item{\code{urban}}{number of residents per 1000 in urban areas}
    \item{\code{educ}}{per capita expenditure on education (response)}
    \item{\code{percap}}{per capita income}
    \item{\code{under18}}{number of residents per 1000 under 18}
  }
}

\examples{
data(educ.df)
educ.lm = lm(educ~urban + percap + under18, data=educ.df)
summary(educ.lm)

}
\keyword{datasets}
