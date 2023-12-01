# beamer.side.by.side.family


beamer.side.by.side.family <- function(This.species,
                                       Supporting.image,
                                       Supporting.text,
                                       My.jpeg.files = my.jpeg.files,
                                       Record.data = data.ss, 
                                       Enhanced.data = NE.VC55.data
                                       ){
  
  
  header.text <- paste("Records By Family:", This.species)
  
  pander::pandoc.header(header.text, level = 2)
  
  cat(":::::::::::::: {.columns} \n")
  cat('::: {.column width="50%"} \n' )
  
  list.of.details.2 <- summary.by.family(Family = This.species,
                                         record.data = Record.data, 
                                         enhanced.data = Enhanced.data)
  cat(pander::pander(list.of.details.2))
  
  cat('::: \n')
  cat('::: {.column width="50%"} \n ')
  
  image.path.kit <-  get.selected.image(Supporting.image, My.jpeg.files)

   pander::pandoc.image(image.path.kit, Supporting.text)
  
  cat("\n","\n")
  
  cat('::: \n')
  cat(':::::::::::::: \n')
  
  
  
  
  
  
  
  
  
  
  
}