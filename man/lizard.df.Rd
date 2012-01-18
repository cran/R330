\name{lizard.df}
\alias{lizard.df}
\docType{data}
\title{
Lizard data
}
\description{
Site preferences of two species of lizard, grahami and opalinus
}
\usage{data(lizard.df)}
\format{
  A data frame with 12 observations on the following 5 variables:
  \describe{
    \item{\code{length}}{perch lenght (short, long)}
    \item{\code{height}}{perch height (high, low)}
    \item{\code{time}}{time of day (early, late, mid)}
    \item{\code{r}}{number of grahami lizards}
    \item{\code{n}}{total number of lizards}
  }
}
\source{
Schoener, T. W. (1970) Nonsynchronous spatial overlap of lizards in patchy habitats. Ecology 51, 408-418.
}
\references{
McCullagh, P. and Nelder, J. A. (1989.) Generalized Linear Models (2nd Edition). Chapman and Hall, London.
}
\examples{
data(lizard.df)
plot.design(lizard.df, y=log(lizard.df$r
/(lizard.df$n-lizard.df$r)), ylab="mean of logits")
}
\keyword{datasets}
