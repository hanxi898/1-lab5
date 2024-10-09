install.packages("httr")
install.packages("jsonlite")
library(httr)
library(jsonlite)
get_kolada_data <- function(year) {
  library(httr)
  library(jsonlite)
  
  url <- paste0("https://api.kolada.se/v2/data/kpi/N00945/year/", year)
  response <- GET(url)
  
  if (status_code(response) == 200) {
    data <- content(response, as = "text", encoding = "UTF-8")
    json_data <- fromJSON(data)
    return(json_data)
  } else {
    stop("Failed to fetch data. Status code: ", status_code(response))
  }
}
usethis::use_testthat()
usethis::use_test("kolada")