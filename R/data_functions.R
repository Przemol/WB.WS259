#' listAnnotations
#'
#' @return annotations table
#' @export
#'
listAnnotations <- function() {
  get(load(system.file('extdata/info.rda', package = 'WB.WS259')))

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
