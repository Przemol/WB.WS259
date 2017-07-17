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
#' @param chromosomes style to convert chromosomes names to, default to UCSC, leave blank for WB/Ensembl
#' @return BED file
#' @export
#'
getBED <- function(x, chromosomes='UCSC') {
  dat <- get(data(list=x))

  if(nchar(chromosomes)) {
    message('Converting ', seqlevelsStyle(dat), ' chromosome names to ', chromosomes, '.')
    seqlevelsStyle(dat) <- chromosomes
  }

  message('Exporting ', length(dat), ' regions to ', getwd(), '/', paste0(x, '.bed'), ' file.')
  export.bed(dat, paste0(x, '.bed'))

  message('Done.')
}
