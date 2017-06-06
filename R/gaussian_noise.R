#' Take a numeric and add to it a normally distributed random number.
#'
#' @param image A numeric. Should be an element of an array.
#' @param mu The mean of the normal distribution the random number is sampled from.
#' @param variance The variance of the normal distribution the random number is sampled from.
#' @examples
#' gaussian_noise(0.8, 1, 0.4)
#' gaussian_noise(1, variance = 0.25)
#' gaussian_noise(3)

gaussian_noise = function(image, mu = 0, variance = 0.01) {
  try(if(class(image)!="numeric") stop("array contained non-numerics", call. = FALSE))

  standard_deviation = sqrt(variance)
  image = image + rnorm(1, mean = mu, sd = standard_deviation)

  return(image)
}
