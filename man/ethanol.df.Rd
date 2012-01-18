\name{ethanol.df}
\alias{ethanol.df}
\docType{data}
\title{
Engine exhaust fumes from burning ethanol
}
\description{
Ethanol fuel was burned in a single-cylinder engine. For various settings of the engine compression and equivalence ratio, the emissions of nitrogen oxides were recorded. 
}
\usage{data(ethanol.df)}
\format{
  A data frame with 88 observations on the following 3 variables:
  \describe{
    \item{\code{NOx}}{Concentration of nitrogen oxides, NO and NO2, in micrograms per Joule}
    \item{\code{C}}{Compression ratio of the engine}
    \item{\code{E}}{Equivalence ratio - a measure of the richness of the air and ethanol fuel mixture.}
  }
}

\source{
Brinkman, N.D. (1981) Ethanol Fuel: A Single - Cylinder Engine Study of Efficiency and Exhaust Emissions. SAE transactions, 90, 1410 - 1424.
}
\references{
Cleveland, William S. (1993) Visualizing Data. Hobart Press, Summit, New Jersey. 
}
\examples{
data(ethanol.df)
pairs20x(ethanol.df)
}
\keyword{datasets}
