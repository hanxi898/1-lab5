#' @title get_kolada_data
#' @name get_kolada_data
#' @description obtain the data.
#' @param year The year for which to fetch data.
#' @return A list containing the data for the specified year.
#' @export
get_kolada_data <- function(year) {
  library(httr)
  library(jsonlite)
  
  url <- paste0("https://api.kolada.se/v2/data/kpi/N00945/year/2021", year)
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

library(lab5)
setwd("C:/Users/Yunta/Documents/lab5/lab5")
install.packages("httr")
install.packages("jsonlite")
library(httr)
library(jsonlite)
 
devtools::document()  # 生成文档
devtools::build()     # 构建包
devtools::install()   # 安装包

browseVignettes("lab5")
usethis::use_vignette("vignette")

