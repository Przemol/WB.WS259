getandProcessData <- function() {
  #ce_anno <- import.gff3('/Users/przemol/Downloads/c_elegans.PRJNA13758.WS259.annotations.gff3.gz')
  load("ce_anno.Rdata")
  tab <- sort(table(ce_anno$type), decreasing = TRUE)
  dir.create('data')

  out <- sapply(names(rev(tab))[c(1:2)], function(x){
    message(x)

    gr <- ce_anno[ce_anno$type==x]

    if( nrow(mcols(gr)) > 1 ) {
      mcols(gr) <- mcols(gr)[,!apply(apply(mcols(gr), 2, is.na), 2, all)]
      mcols(gr) <- mcols(gr)[,apply(sapply(mcols(gr), lengths), 2, all)]
    } else {
      mcols(gr) <- mcols(gr)[,!(apply(mcols(gr), 2, is.na))]
      mcols(gr) <- mcols(gr)[,as.logical(sapply(mcols(gr), lengths))]
    }




    assign(paste0('wb.', x), gr, envir = .GlobalEnv)
    save(list=paste0('wb.', x), file=paste0('data/wb.', x, '.rda'))

    return(
      c(x, length(gr), paste(colnames(mcols(gr)), collapse=';'))
    )

  })

}


devideData <- function() {
  load("data/wb.expressed_sequence_match.rda")
  sapply(seqlevels(wb.expressed_sequence_match), function(x) {
    message(x)
    out <- wb.expressed_sequence_match[seqnames(wb.expressed_sequence_match)==x]
    assign(paste0('wb.expressed_sequence_match_', x), out, envir = .GlobalEnv)
    save(list = paste0('wb.expressed_sequence_match_', x), file=paste0('data/wb.expressed_sequence_match_', x, '.rda'))
  })
}

getStats <- function() {
  datasets <- data(package = 'WB.WS259')$result[,'Item']
  out <- lapply(datasets, function(x){
    message(x)
    dat <- get(data(list=x))
    c(
      feature=x,
      count=length(dat),
      length_bp=sum(width(dat)),
      genome_pct=signif(sum(width(GenomicRanges::reduce(dat, ignore.strand=TRUE)))/1002864.01, 3 ),
      memory=format(object.size(dat), units='auto'),
      metadata_columns=paste(colnames(mcols(dat)), collapse=';')
      )
  })

  info2 <- tbl_df(do.call(rbind, out))
}
