\name{rubber.df}
\alias{rubber.df}
\docType{data}
\title{
Rubber Specimen Data
}
\description{
Thirty rubber specimens were rubbed with an abrasive metal.
}
\usage{data(rubber.df)}
\format{
  A data frame with 30 observations on the following 3 variables:
  \describe{
    \item{\code{hardness}}{Hardness in degrees of Shore}
    \item{\code{tensile}}{strength in kilograms per square centimetre}
    \item{\code{abloss}}{the amount of material rubbed off in grams per horsepower-hour}
  }
}

\source{GEP Box, WR Cousins, FR Hindsworth, H Heeny, M Milbourne, W Spendley and WL Stevens (1957). In OL Davies (Ed.) Statistical Methods in Research and Production, 3rd Ed. Oliver and Boyd, London. 
}
\references{
Chambers, J. M. et al. (1983). Graphical Methods for Data Analysis. Duxbury Press: Boston.
}
\examples{
data(rubber.df)
rubber.lm<-lm(abloss~hardness+tensile,data=rubber.df)
pred<-fitted.values(rubber.lm)
res<-residuals(rubber.lm)
plot(pred,res)
}
\keyword{datasets}
