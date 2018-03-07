#'  SLU Spanish Survey Results
#'
#' A data set containing sample survey responses that have been anonymized. This survey is given to
#' Spanish students each semester at SLU. These data are raw and require significant cleaning.
#'
#' @docType data
#'
#' @usage data(students)
#'
#' @format A tibble with 27 rows and 36 variables:
#' \describe{
#'   \item{X}{row number}
#'   \item{Identification.Number}{identification number}
#'   \item{Full.Name}{}
#'   \item{First.Name}{}
#'   \item{Last.Name}{}
#'   \item{Gender}{}
#'   \item{Spanish.Course}{}
#'   \item{SPAN.1010.section}{}
#'   \item{SPAN.1020.section}{}
#'   \item{SPAN.2010.section}{}
#'   \item{Class.Status}{}
#'   \item{Previous.study}{}
#'   \item{Taken.at.SLU}{}
#'   \item{Placement}{}
#'   \item{Placement.score}{}
#'   \item{Native.language}{}
#'   \item{Other.native.language}{}
#'   \item{Home.language}{}
#'   \item{Other.home.language}{}
#'   \item{Major}{}
#'   \item{Other.major}{}
#'   \item{Minor}{}
#'   \item{Other.minor}{}
#'   \item{Interested.major.minor}{}
#'   \item{Community.interaction}{}
#'   \item{Work.learning}{}
#'   \item{Attitude.Hispanic.community}{}
#'   \item{Attitude.previous.course}{}
#'   \item{Attitude.learning.Spanish}{}
#'   \item{Interest.FL}{}
#'   \item{Desire}{}
#'   \item{Employment.use}{}
#'   \item{In.class.feeling}{}
#'   \item{Speaking.Spanish.feeling}{}
#'   \item{Cultures.different}{}
#'   \item{Proficient.useful}{}
#' }
#' @source \href{http://www.reuters.com/investigates/special-report/usa-lead-testing/#interactive-lead}{Reuters reporting on lead exposure} and 2015 5-year American Community Survey estimates for City of St. Louis Census Tracts via American Fact Finder
#' @references Pell, M.B. & Schneyer, J. (2016, December 19). Off the Charts: The thousands of U.S. locales where lead poisoning is worse than in Flint. \emph{Reuters}, retrieved from \href{http://www.reuters.com/investigates/special-report/usa-lead-testing}{website}.
#'
#' @examples
#' str(students)
#' head(students)
#'
"students"
