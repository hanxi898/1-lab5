library(testthat)
library(httr)
library(jsonlite)
library(lab5)


test_that("get_kolada_data fetches data for 2021 correctly", {
  result <- get_kolada_data(2021)
  expect_true(!is.null(result))  
})

test_that("get_kolada_data handles invalid year gracefully", {
  expect_error(get_kolada_data(3000), "Failed to fetch data")
})

test_that("get_kolada_data returns consistent results", {
  expected_result <- get_kolada_data(2021)  
  expect_equal(get_kolada_data(2021), expected_result)
})

