library(testthat)
library(httr)
library(jsonlite)
library(lab5)

test_that("API functions work as expected", {
  big_data <- get_all_data()  
  expect_type(big_data, "list")
  expect_true(length(big_data) > 100)  
  expect_error(get_kolada_data("data", params = list(limit = 1000)),
               "Failed to fetch data. Status code: ", status_code(response)) 
  response <- get_data_by_id("N00945") 
  expect_type(response, "list")
  expect_true("id" %in% names(response))
  expect_equal(response$id, "N00945")
  specific_data <- get_data_by_id("specific_id")  
  expect_equal(specific_data$value, "expected_value") 
})