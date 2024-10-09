#' @title Fetch Data from Kolada API
#' @description This function fetches data from the Kolada API based on the search term provided and the user's API key.
#' @param search A string representing the search term for the API query.
#' @param api_key A string representing the API key for authentication.
#' @return Parsed content from the API response.
#' @name get_api
#' @export
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