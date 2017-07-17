#' listAnnotations
#'
#' @return annotations table
#' @export
#'
listAnnotations <- function() {
  data(WB.info)
  knitr::kable(info)
}


#' getBED
#'
#' @param x name of dataset to export
#' @return BED file
#' @export
#'
getBED <- function(x) {
  data(list=x)
  export.bed(x, paste0(x, '.bed'))
}
