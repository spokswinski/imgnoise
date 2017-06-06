#' Take a numeric and, with a specified probability to do so, set it equal to either 0 or 1 with a 50% probability for each option, or otherwise leave it as is.
#'
#' @param image A numeric. Should be an element of an array.
#' @param noise_density The probability with which the function will then set the numeric equal to 0 or 1.
#'
#' @examples
#' salt_and_pepper_noise(0.54, 0.6)
#' salt_and_pepper_noise(0.3)

salt_and_pepper_noise = function(image, noise_density = 0.05) {
  try(if(class(image)!="numeric") stop("array contained non-numerics", call. = FALSE))
  try(if(noise_density < 0 | noise_density > 1) stop("noise density must be between 0 and 1", call. = FALSE))

  if (runif(1) > noise_density) {
    return(image)
  }

  if (runif(1) < 0.5) {
    return(0)
  }

  return(1)
}
