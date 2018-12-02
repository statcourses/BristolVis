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
