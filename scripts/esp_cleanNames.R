#' Clean names
#' 
#' @description Clean the survey output's names in a consistent way. 
#' 
#' @useage esp_cleanNames(.data)
#' 
#' @param .data A data frame or tibble
#' 
#' @return A cleaned data set with standardized names.
#' 
#' @importFrom dplyr %>%
#' @importFrom dplyr rename
#' @importFrom dplyr select
#' 
#' @export
esp_cleanNames <- function(.data){
  
  .data %>%
    dplyr::select(-X) %>%
    dplyr::rename(id = Identification.Number) %>%
    dplyr::rename(fullName = Full.Name) %>%
    dplyr::rename(firstName = First.Name) %>%
    dplyr::rename(lastName = Last.Name) %>%
    dplyr::rename(gender = Gender) %>%
    dplyr::rename(spanishCourse = Spanish.Course) %>%
    dplyr::rename(sec1010 = SPAN.1010.section) %>%
    dplyr::rename(sec1020 = SPAN.1020.section) %>%
    dplyr::rename(sec2010 = SPAN.2010.section) %>%
    dplyr::rename(classStats = Class.Status) %>%
    dplyr::rename(prevStudy = Previous.study) %>%
    dplyr::rename(sluSpan = Taken.at.SLU) %>%
    dplyr::rename(placement = Placement) %>%
    dplyr::rename(placeScore = Placement.score) %>%
    dplyr::rename(nativeLang = Native.language) %>%
    dplyr::rename(nativeLangOthr = Other.native.language) %>%
    dplyr::rename(homeLang = Home.language) %>%
    dplyr::rename(homeLangOthr = Other.home.language) %>%
    dplyr::rename(major = Major) %>%
    dplyr::rename(majorOther = Other.major) %>%
    dplyr::rename(minor = Minor) %>%
    dplyr::rename(minorOther = Other.minor) %>%
    dplyr::rename(spanInterest = Interested.major.minor) %>%
    dplyr::rename(community = Community.interaction) %>%
    dplyr::rename(work = Work.learning) %>%
    dplyr::rename(attHispanic = Attitude.Hispanic.community) %>%
    dplyr::rename(attPrior = Attitude.previous.course) %>%
    dplyr::rename(attLearn = Attitude.learning.Spanish) %>%
    dplyr::rename(interest = Interest.FL) %>%
    dplyr::rename(desire = Desire) %>%
    dplyr::rename(emplyment = Employment.use) %>%
    dplyr::rename(inClass = In.class.feeling) %>%
    dplyr::rename(speaking = Speaking.Spanish.feeling) %>%
    dplyr::rename(cultures = Cultures.different) %>%
    dplyr::rename(proficient = Proficient.useful) -> .data
  
  return(.data)
}
