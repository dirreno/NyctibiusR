nyctibius <- NULL

.onLoad <- function(libname, pkgname) {
  # delay load foo module (will only be loaded when accessed via $)
  nyctibius <<- import("nyctibius", delay_load = TRUE)
}

library(reticulate)

nyctibius <- import("nyctibius")

Harmonizer <- nyctibius$Harmonizer


#' Extracts data from a given URL using nyctibius Harmonizer.
#'
#' This function extracts data from a given URL using the nyctibius Harmonizer package
#' and returns the extracted data information.
#'
#' @param url A character string specifying the URL from which to extract the data.
#' @param path A character string specifying the local path where the extracted files will be saved.
#' @param depth An integer specifying the depth of extraction if the URL contains multiple levels.
#' @param ext A character vector specifying the file extensions to be considered during extraction.
#'
#' @return A list containing the extracted data information.
#' @examples
#' \dontrun{
#' data_info <- extract_data("https://microdatos.dane.gov.co/index.php/catalog/548/get-microdata")
#' }
#' @export

extract_data <- function(url=NULL, path=NULL, depth=0) {
  harmonizer <- Harmonizer()
  list_datainfo <- harmonizer$extract(url=url, path=path, depth=depth)
  return(list_datainfo)
}

# Define a function to transform data using harmonizer.transform
#transform_data <- function() {
#  harmonizer$transform()
#}

# Define a function to transform data using harmonizer.transform
#load_data <- function() {
#  harmonizer$load()
#}
