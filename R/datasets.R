#' med data set
#'
#' The Pain Medication data is a modified data set from a randomized trial with 2 treatment
#' arms (existing drug and new drug) for 800 individuals. It contains two dosage levels per
#' treatment arm (low, high). The outcome is time to relief (hrs). In some subjects, no
#' relief effect was ever observed. For these subjects, Status=0 (censored). For subjects
#' where pain relief was observed, Status=1. The bseline and demographic measures include
#' age, gender and health status. Therefore, the following variables are represented in columns:
#'
#'
#' \describe{
#' \item{age}{Subject's age at time of experiment}
#' \item{gender}{A factor: Male or Female}
#' \item{health}{Pre-defined health condition: poor, fair, good}
#' \item{treatment}{A factor: Existing or New}
#' \item{dosage}{Level of treatment's dose}
#' \item{status}{Status of effect observation, either 'Observed' or 'Censored'}
#' \item{time}{Time to relief in hours}
#' }
#' @name med
#' @docType data
#' @usage data(med)
#' @keywords datasets
NULL

#' Movie information and user ratings from IMDB.com.
#'
#' The internet movie database, \url{http://imdb.com/}, is a
#' website devoted to collecting movie data supplied by
#' studios and fans.
#'
#' It claims to be the biggest movie database on the web
#' and is run by  amazon.
#' @name bmov
#' @docType data
#' @usage data(bmov)
#' @return A data frame with 4847 rows and 24 variables.
#' @note Movies were selected for inclusion if they had a known length, had been rated by at least one imdb user and had an mpaa rating. The  data set contains the following fields:
#' \describe{
#' \item{title.}{Title of the movie.}
#' \item{year.}{Year of release.}
#' \item{budget.}{Total budget (if known) in US dollars}
#' \item{length.}{Length in minutes.}
#' \item{rating.}{Average IMDB user rating.}
#' \item{votes.}{Number of IMDB users who rated this movie.}
#' \item{r1-10.}{Multiplying by ten gives percentile (to nearest 10\%) of users who rated this movie a 1.}
#' \item{mpaa.}{MPAA rating.}
#' \item{action, animation, comedy, drama, documentary, romance, short.}{Binary variables representing if movie was classified as belonging to that genre.}}
#'@keywords datasets
#' @examples
#' data(bmov)
NULL

#' birthweight
#'
#' @name birthweight
#' @docType data
#' @usage data(birthweight)
#' @return A data frame with 20 rows and 4 variables.
#' @keywords datasets
#' @examples
#' data(birthweight)
NULL

#' bmi
#'
#' @name bmi
#' @docType data
#' @usage data(bmi)
#' @return A data frame with 20 rows and 5 variables.
#' @keywords datasets
#' @examples
#' data(bmi)
NULL


#' bmi2
#'
#' @name bmi2
#' @docType data
#' @usage data(bmi2)
#' @return A data frame with 200 rows and 6 variables.
#' @keywords datasets
#' \describe{
#' \item{id}{Unique participant ID number}
#' \item{age}{Subject's age at time of experiment}
#' \item{bmi}{Continuous variable capturing the participants bmi}
#' \item{sex}{'Male' or 'Female'}
#' \item{diet}{Participants diet: 'Good', 'Moderate' or 'Poor'}
#' \item{status}{Health status: 'Healthy' or 'Unhealthy'}
#' }
#' @examples
#' data(bmi)
NULL

#' disease
#'
#' @name disease
#' @docType data
#' @usage data(disease)
#' @return A data frame with 1000 rows and 7 variables.
#' @keywords datasets
#' @examples
#' data(disease)
NULL

#' lbw
#'
#' @name lbw
#' @docType data
#' @usage data(lbw)
#' @return A data frame with 189 rows and 11 variables.
#' @keywords datasets
#' @examples
#' data(lbw)
NULL

#' us_teams
#'
#' @name us_teams
#' @docType data
#' @usage data(us_teams)
#' @return A data frame with 50 rows and 3 variables.
#' @keywords datasets
#' @examples
#' data(us_teams)
NULL
