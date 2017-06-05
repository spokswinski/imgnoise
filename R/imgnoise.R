imgnoise = function(image, noise_type, ...) {
  if (noise_type == "gaussian") {
    return(apply(image, 1:length(dim(image)), gaussian_noise, ...))
  }
  if (noise_type == "salt_and_pepper") {
    return(apply(image, 1:length(dim(image)), salt_and_pepper_noise, ...))
  }
  if (noise_type == "speckle") {
    return(apply(image, 1:length(dim(image)), speckle_noise, ...))
  }
  if (noise_type == "uniform") {
    return(apply(image, 1:length(dim(image)), uniform_noise, ...))
  }
}
