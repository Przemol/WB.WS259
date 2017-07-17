devideData <- function() {
  load("data/wb.expressed_sequence_match.rda")
  sapply(seqlevels(wb.expressed_sequence_match), function(x) {
    message(x)
    out <- wb.expressed_sequence_match[seqnames(wb.expressed_sequence_match)==x]
    assign(paste0('wb.expressed_sequence_match_', x), out, envir = .GlobalEnv)
    save(list = paste0('wb.expressed_sequence_match_', x), file=paste0('data/wb.expressed_sequence_match_', x, '.rda'))
  })
}
