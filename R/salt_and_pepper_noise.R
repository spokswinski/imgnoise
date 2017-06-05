salt_and_pepper_noise = function(image, noise_density = 0.05) {
  if (runif(1) > noise_density) {
    return(image)
  }
  if (runif(1) < 0.5) {
    return(0)
  }
  return(1)
}
