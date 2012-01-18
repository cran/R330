\name{traffic.df}
\alias{traffic.df}
\docType{data}
\title{
Highway accdient rates
}
\description{
Data gathered in the course of studying the relationship between accident rates on US highways and various characteristics of the highway
}
\usage{data(traffic.df)}
\format{
  A data frame with 39 observations on the following 15 variables:
  \describe{
    \item{\code{obs}}{observation number}
    \item{\code{rate}}{The accident rate per million vehicle miles (response)}
    \item{\code{len}}{The length of the segment of highway in miles}
    \item{\code{adt}}{Average daily traffic count ('000)}
    \item{\code{trks}}{The percentage of the traffic that are trucks}
    \item{\code{slim}}{the speed limit in mph}
    \item{\code{lwd}}{the lane width in feet}
    \item{\code{shld}}{the shoulder width in feet}
    \item{\code{itg}}{number of freeway interchanges per mile}
    \item{\code{sigs}}{number of entrances controlled by lights per mile}
    \item{\code{acpt}}{number of access points per mile}
    \item{\code{lane}}{number of lanes in each direction}
    \item{\code{fai}}{dummy variable, equal to 1 if an interstate highway, zero otherwise}
    \item{\code{pa}}{equal to 1 if a principal highway, 0 otherwise}
    \item{\code{ma}}{equal to 1 if a major highway, 0 otherwise}
  }
}
\source{
Carl Hoffstedt. This differs from the dataset highway in the alr3 package only by transformation of some of the columns.
}
\references{
Fox, J. and Weisberg, S. (2011) An R Companion to Applied Regression, Second Edition, Sage. 

Weisberg, S. (2005) Applied Linear Regression, Third Edition. Wiley, Section 7.2. 
}
\examples{
data(traffic.df)
traffic.lm<-lm(rate~.,data=traffic.df)
summary(traffic.lm)
}
\keyword{datasets}
