#' Clean gender
#' 
#' @description Clean the survey's gender variable into a binary measure for female respondents. 
#' 
#' @useage esp_female(.data, currentVar, newVar, logical = TRUE)
#' 
#' @param .data A data frame or tibble
#' @param currentVar The current source variable
#' @param newVar The name of a new variable to be created
#' @param logical A logical scalar; should a logical variable be created? If \code{FALSE}, a factor is created.
#' 
#' @return A data frame or a tibble with the newly created variable.
#' 
#' @importFrom dplyr %>%
#' @importFrom dplyr mutate
#' 
#' @export
esp_female <- function(.data, currentVar, newVar, logical = TRUE){
  
  # reformat currentVar input
  currVar <- rlang::enquo(currentVar)
  
  # reformat newVar input
  newVar <- rlang::enquo(newVar)
  newVarQ <- rlang::quo_name(rlang::enquo(newVar))
  
  # recode variable
  if (logical == TRUE){
  
    .data <- dplyr::mutate(.data, !!newVarQ := ifelse(!!currVar == "female", TRUE, FALSE))    

  }
  else if (logical == FALSE){

    .data %>%
      dplyr::mutate(!!newVarQ := ifelse(!!currVar == "female", "Yes", "No")) %>%
      dplyr::mutate(!!newVarQ := as.factor(!!newVar)) -> .data

  }
  
  return(.data)
  
}
