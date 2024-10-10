#' @title get_kolada_data
#' @name get_kolada_data
#' @description obtain the data.
#' @param year The year for which to fetch data.
#' @return A list containing the data for the specified year.
#' @export
get_kolada_data <- function(year) {
  library(httr)
  library(jsonlite)
  
  # 构建请求的 URL
  url <- paste0("https://api.kolada.se/v2/data/kpi/N00945/year/", year)
  print(paste("Fetching data from URL:", url))  # 打印请求的 URL
  response <- GET(url)  # 发送 GET 请求
  
  # 检查响应状态码
  if (status_code(response) == 200) {
    data <- content(response, as = "text", encoding = "UTF-8")  # 获取响应内容
    json_data <- fromJSON(data)  # 解析 JSON 数据
    
    # 打印返回的 JSON 数据，以确认其结构
    print(json_data)
    
    return(json_data)  # 返回解析后的数据
  } else {
    # 打印错误信息
    stop("Failed to fetch data. Status code: ", status_code(response))  
  }
}

# 调用函数以获取数据
result <- get_kolada_data(2021)

# 打印结果
print(result)

usethis::use_testthat()
usethis::use_test("kolada")

library(lab5)
setwd("C:/Users/Yunta/Documents/lab5/lab5")
install.packages("httr")
install.packages("jsonlite")
library(httr)
library(jsonlite)
 
devtools::document()  
devtools::build()     
devtools::install()   

browseVignettes("lab5")
usethis::use_vignette("vignette")
usethis::use_github_action_check_standard()
install.packages("usethis") 

library(usethis)

use_github_action("check-standard")

