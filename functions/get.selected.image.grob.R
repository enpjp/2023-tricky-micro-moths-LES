# Get selected image

get.selected.image.grob <- function(selected.image, jpeg.files ) {
  
  jpeg.files$file.name <- fs::path_file(jpeg.files$image.path)
  
  image.path.row <- which(jpeg.files$file.name == selected.image)
  
  image.path.kit <- jpeg.files$image.path[image.path.row]
  
  readJPEG(image.path.kit)
  my.selected.image <- rasterGrob( readJPEG(image.path.kit))
  
}