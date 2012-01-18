\name{housing.df}
\alias{housing.df}
\docType{data}
\title{
Housing conditions satisfaction
}
\description{
A data set investingating the satisfaction with housing conditions in Copenhagen
}
\usage{data(housing.df)}
\format{
  A data frame with 18 observations on the following 4 variables:
  \describe{
    \item{\code{sat}}{Satisfaction of householders with their present housing circumstances, (High, Medium or Low, ordered factor).}
    \item{\code{infl}}{Perceived degree of influence householders have on the management of the property (High, Medium, Low). }
    \item{\code{cont}}{Contact residents are afforded with other residents, (Low, High).}
    \item{\code{count}}{number in each category}
  }
}
\source{
Madsen, M. (1976). Statistical analysis of multiple contingency tables. Two examples. Scand J. Statist., 3,97-106
}
\references{
Cox, D. R. & Snell, E. J. (1981). Applied Statistics: Principles and Examples. Chapman and Hall, London.
}
\examples{
data(housing.df)
housing.glm<-glm(count~sat*infl*cont, family=poisson, data=housing.df)
anova(housing.glm, test="Chisq")

}
\keyword{datasets}
