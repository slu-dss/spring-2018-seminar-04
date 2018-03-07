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

  # save parameters to list
  paramList <- as.list(match.call())

  # check for missing parameters
  if (missing(newVar)) {
    stop('A new variable name must be specified for newVar')
  }

  if (missing(currentVar)) {
    stop('An existing variable must be specified for currentVar')
  }

  # reformat currVar input
  if (!is.character(paramList$currentVar)) {
    currVar <- rlang::enquo(currentVar)
  } else if (is.character(paramList$currentVar)) {
    currVar <- rlang::quo(!! rlang::sym(currentVar))
  }

  # reformat newVar input
  if (!is.character(paramList$newVar)) {
    createVar <- rlang::enquo(newVar)
  } else if (is.character(paramList$newVar)) {
    createVar <- rlang::quo(!! rlang::sym(newVar))
  }

  createVarQ <- rlang::quo_name(rlang::enquo(newVar))

  # recode variable
  if (logical == TRUE){

    .data <- dplyr::mutate(.data, !!createVarQ := ifelse(!!currVar == "female", TRUE, FALSE))

  }
  else if (logical == FALSE){

    .data %>%
      dplyr::mutate(!!createVarQ := ifelse(!!currVar == "female", "Yes", "No")) %>%
      dplyr::mutate(!!createVarQ := as.factor(!!createVar)) -> .data

  }

  # return data object
  return(.data)

}
