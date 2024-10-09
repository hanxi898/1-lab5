#' @title Get Kolada Data
#' @description Obtain the data for a specific year.
#' @param year The year for which to fetch data.
#' @return A list containing the data for the specified year.
#' @name get_kolada_data
#' @import httr
#' @import jsonlite
#' @export
library(httr)
library(jsonlite)
get_kolada_data <- function(year) {

  if (year < 1900 || year > 2100) {
    stop("Failed to fetch data. Invalid year: ", year)
  }
  
  url <- paste0("https://api.kolada.se/v2/data/kpi/N00945/year/", year)
  response <- GET(url)
  
  if (status_code(response) == 200) {
    data <- content(response, as = "text", encoding = "UTF-8")
    json_data <- fromJSON(data)
    if (is.null(json_data) || length(json_data) == 0) {
      stop("Failed to fetch data. The response is empty.")
    }
    
    return(json_data)
  } else {
    stop("Failed to fetch data. Status code: ", status_code(response))
  }
}
