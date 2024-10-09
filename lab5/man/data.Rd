\name{data}
\alias{data}
\docType{data}
\title{A Data Set}
\description{
  This dataset contains information obtained from a web API. It includes key performance indicators (KPIs) and data for various municipalities.
}
\usage{data("data")}
\format{
  A character string in JSON format. The structure includes:
  \describe{
    \item{count}{The total count of records.}
    \item{values}{A list of records, where each record contains the following fields: \code{kpi}, \code{municipality}, \code{period}, and \code{values}.}
  }
}
\details{
  The dataset is useful for analyzing municipal performance indicators over time.
}
\source{
  Data obtained from the Kolada API. For more information, visit \url{https://www.kolada.se}.
}
\references{
  Kolada (2021). Municipal performance indicators. Retrieved from \url{https://www.kolada.se}.
}
\examples{
  data(data)
  # Display the structure of the dataset
  str(data) 
  # Optionally, you can plot the data
  # plot(data)
}
\keyword{datasets}
