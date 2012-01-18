\name{diets.df}
\alias{diets.df}
\docType{data}
\title{
Weight gains of rats
}
\description{
Data from an experiment on the weight gain of rats based on the source of protein and the amount
}
\usage{data(diets.df)}
\format{
  A data frame with 60 observations on the following 3 variables:
  \describe{
    \item{\code{gain}}{amount of weight gained}
    \item{\code{source}}{source of protein either beef, pork or cereal}
    \item{\code{level}}{amount of protein given, high or low}
  }
}

\source{
Snedecor, G.W., and Cochran, W.G., (1989), Statistical Methods.
}

\examples{
data(diets.df)
plot.design(diets.df)

}
\keyword{datasets}
