\name{rats.df}
\alias{rats.df}
\docType{data}
\title{
Rat growth data
}
\description{
Each rat in the data set was measured on 11 dates  expressed as days from start of the experiment. The purpose was to see if the growth rate was the same for each group.
}
\usage{data(rats.df)}
\format{
  A data frame with 176 observations on the following 5 variables:
  \describe{
    \item{\code{growth}}{a numeric vector}
    \item{\code{group}}{a numeric vector}
    \item{\code{rat}}{a numeric vector}
    \item{\code{change}}{a numeric vector}
    \item{\code{day}}{days since the start of experiment}
  }
}
\details{
Hand and Crowder (1996) describe data on the body weights of rats measured over 64 days. These data also appear in Table 2.4 of Crowder and Hand (1990). The body weights of the rats (in grams) are measured on day 1 and every seven days thereafter until day 64, with an extra measurement on day 44. The experiment started several weeks before ``day 1.'' There are three groups of rats, each on a different diet. 
}
\source{
Pinheiro, J. C. and Bates, D. M. (2000), Mixed-Effects Models in S and S-PLUS, Springer, New York. (Appendix A.3) 

Crowder, M. and Hand, D. (1990), Analysis of Repeated Measures, Chapman and Hall, London. 

Hand, D. and Crowder, M. (1996), Practical Longitudinal Data Analysis, Chapman and Hall, London. 

}
\examples{
data(rats.df)
group.vec<-as.numeric(rats.df$group)
# convert group from factor to vector
plot(growth~day,type="n",
data=rats.df,
xlab="days elapsed",
ylab="Weight (grams)",
main="Rat Growth rates")
for(i in (0:15)){
index<-(1:11) + i*11
lines(rats.df$day[index],rats.df$growth[index],
lty=group.vec[index[1]])
}
legend(45,400,paste("Group",1:3),lty=c(1,2,3))
}
\keyword{datasets}
