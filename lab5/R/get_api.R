get_api <-
function(search, api_key) {
  url <- paste0("https://www.kolada.se/om-oss/api/", search, "&appid=", api_key)
  response <- GET(url)
  if (response$status_code == 200) {
    content <- content(response, "parsed")
    return(content)
  } else {
    stop("Failed to fetch data. Status code: ", response$status_code)
  }
}
