\name{cherry.df}
\alias{cherry.df}
\docType{data}
\title{
Girth, Height and Volume for Black Cherry Trees
}
\description{
This data set provides measurements of the girth, height and volume of timber in 31 felled black cherry trees. Note that girth is the diameter of the tree (in inches) measured at 4 ft 6 in above the ground. 
}
\usage{data(cherry.df)}
\format{
  A data frame with 31 observations on the following 3 variables:
  \describe{
    \item{\code{diameter}}{Tree diameter in inches}
    \item{\code{height}}{Height in ft}
    \item{\code{volume}}{Volume of timber in cubic ft}
  }
}
\source{
Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student Handbook. Duxbury Press. 
}
\references{
Atkinson, A. C. (1985) Plots, Transformations and Regression. Oxford University Press. 
}
\examples{
data(cherry.df)
cherry.lm =lm(volume~diameter+height,data=cherry.df) 
new.df = data.frame(diameter=c(11,12),
             height=c(85,90))
predict(cherry.lm,new.df)

}
\keyword{datasets}
