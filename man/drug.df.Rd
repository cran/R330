\name{drug.df}
\alias{drug.df}
\docType{data}
\title{
Drug addiction data
}
\description{
Data from University of Massachusetts AIDS Research Unit IMPACT study, a medical study performed in the US in the early 90' s. The study aimed to evaluate two different treatments for drug addiction.
}
\usage{data(drug.df)}
\format{
  A data frame with 575 observations on the following 9 variables:
  \describe{
    \item{\code{ID}}{Identification Code}
    \item{\code{AGE}}{Age at enrollment}
    \item{\code{BECK}}{Back depression score}
    \item{\code{IVHX}}{IV drug use history at admission (1=never, 2=previous, 3=recent)}
    \item{\code{NDRUGTX}}{number of prior treatments}
    \item{\code{RACE}}{subjects race (0 = white, 1 = other)}
    \item{\code{TREAT}}{treatment duration (0 = short, 1 = long)}
    \item{\code{SITE}}{treatment site (0 = A, 1 = B)}
    \item{\code{DFREE}}{Remained drug free (1 = Yes, 0 = No) (response)}
  }
}
\source{
Hosmer and Lemeshow, Applied Logistic Regression (2nd Ed), p28
}
\references{
Hosmer, D.W.  and Lemeshow, S. (2000), Applied Logistic Regression (2nd Ed), Wiley, New York.
}
\examples{
data(drug.df)
cross.val(DFREE ~ NDRUGTX + factor(IVHX) + AGE + TREAT, data = drug.df)

}
\keyword{datasets}
