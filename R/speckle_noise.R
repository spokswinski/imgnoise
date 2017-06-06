#' Take a numeric and add to it a uniformly distributed random number proportionate to the numeric itself.
#'
#' @param image A numeric. Should be an element of an array.
#' @param variance The variance of the uniform distribution the random number is sampled from. The variance is converted into a range by the function.
#'
#' @examples
#' speckle_noise(0.57, 0.1)
#' speckle_noise(-4)

speckle_noise = function(image, variance = 0.04) {
  try(if(class(image)!="numeric") stop("array contained non-numerics", call. = FALSE))

  upper_bound = sqrt(variance*12) / 2
  lower_bound = upper_bound * (-1)

  random_noise = runif(1, min = lower_bound, max = upper_bound)
  image = image + random_noise*image

  return(image)
}
