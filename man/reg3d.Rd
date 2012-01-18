\name{reg3d}
\alias{reg3d}

\title{
3d plot of data
}
\description{
plots 3 variables on x,y,z axes and draws fitted plane
}
\usage{
reg3d(data, wire = FALSE)
}

\arguments{
  \item{data}{
a data frame, with the first three columns containing the values of x, y and z
}
  \item{wire}{
If TRUE draws a grid as a reference plane, if FALSE returns a solid reference plane
}
}
\author{
Alan Lee, Blair Robertson
}

\examples{
data(fatty.df)
reg3d(fatty.df,wire=TRUE)

data(rubber.df)
reg3d(rubber.df)
}

\keyword{ aplot }

