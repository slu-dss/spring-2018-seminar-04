#' Clean years of previous study
#' 
#' @description Clean the survey's study variable so that it is converted into a numeric variable representing
#' the number of years a student has studied Spanish. 
#' 
#' @useage esp_female(.data)
#' 
#' @param .data A data frame or tibble
#' 
#' @return A data frame or a tibble with the newly created variable.
#' 
#' @importFrom dplyr %>%
#' @importFrom dplyr mutate
#' @importFrom stringr str_sub
#' 
#' @export
esp_getYears <- function(.data){
  
  .data %>%
    dplyr::mutate(years = stringr::str_sub(prevStudy, 1, 1)) %>%
    dplyr::mutate(years = as.integer(years)) -> .data
  
  return(.data)
}