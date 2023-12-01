# Get selected image

get.selected.image <- function(selected.image, jpeg.files ) {
  
  jpeg.files$file.name <- fs::path_file(jpeg.files$image.path)
  
  image.path.row <- which(jpeg.files$file.name == selected.image)
  
  image.path.kit <- jpeg.files$image.path[image.path.row]
  
}