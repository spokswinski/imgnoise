imgnoise = function(image, noise_type) {
  for (row in 1:nrow(image)) {
    for (col in row:ncol(image)) {
      if (noise_type == speckle) {
        image[row,col] = speckle_noise(image[row,col])
      }
    }
  }
  return(image)
}

