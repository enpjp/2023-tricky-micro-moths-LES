# beamer.side.by.side.family


beamer.bullets.by.image <- function(Header.text,
                                      Bullets.text = "",
                                      heading.level = 2,
                                       Supporting.image = "",
                                       Supporting.text = "",
                                       My.jpeg.files = my.jpeg.files
                                       ){
  
  
  #header.text <- paste("Records By Family:", This.species)
  
  pander::pandoc.header(Header.text, level = heading.level)
  
  cat(":::::::::::::: {.columns} \n")
  cat('::: {.column width="50%"} \n' )
  
 
  cat(pander::pander(Bullets.text))
  
  cat('::: \n')
  cat('::: {.column width="50%"} \n ')
  
  image.path.kit <-  get.selected.image(Supporting.image, My.jpeg.files)
  cat("\n","\n")
   pander::pandoc.image(image.path.kit, Supporting.text)
  
  cat("\n","\n")
  
  cat('::: \n')
  cat(':::::::::::::: \n')
  
  
  
  
  
  
  
  
  
  
  
}