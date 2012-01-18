\name{births.df}
\alias{births.df}
\docType{data}
\title{
Risk factors for low birthweight
}
\description{
Data were collected at Baystate Medical Center, Springfield, Mass. during 1986, as part of a study to identify risk factors for low-birthweight babies.
}
\usage{data(births.df)}
\format{
  A data frame with 189 observations on the following 11 variables:
  \describe{
    \item{\code{id}}{Identificatin code}
    \item{\code{low}}{low birthweight (defined as less than 2500g) 0 = No, 1 = Yes}
    \item{\code{age}}{Age of mother (years)}
    \item{\code{lwt}}{weight of mother at last menstrual period (pounds)}
    \item{\code{race}}{Race (1 = white, 2 = black, 3 = other)}
    \item{\code{smoke}}{smoking status during pregnancy (0 = No, 1 = Yes)}
    \item{\code{ptl}}{History of premature labour (0 = None, 1 = one, 2 = two, etc.}
    \item{\code{ht}}{History of hypertension (0 = No, 1 = Yes)}
    \item{\code{ui}}{Presence of Uterine Irritability (0 = No, 1 = Yes)}
    \item{\code{ftv}}{Number of Physician Visits during the first trimester ( 0 = none, 1 = one, 2 = two, etc.)}
    \item{\code{bwt}}{Birth weight (grams) (response)}
  }
}
\source{
Hosmer & Lemeshow,  Applied Logistic Regression.  pp 25-26.
}
\references{
Hosmer, D.W. & Lemeshow, S.(2000), Applied Logistic Regression (2nd edition), John Wiley & Sons, New York.
}
\examples{
data(births.df)
births.lm<-lm(bwt~age*race*smoke*ui*ht+lwt*race*smoke*ui*ht,data=births.df)
anova(births.lm)

}
\keyword{datasets}
