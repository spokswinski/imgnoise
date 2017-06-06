#' Take a numeric and add to it a uniformly distributed random number.
#'
#' @param image A numeric. Should be an element of an array.
#' @param lower_bound The minimum possible value for the random number.
#' @param upper_bound The maximum possible value for the random number.
#'
#' @examples
#' uniform_noise(4.2, 3, 5)
#' uniform_noise(0.3, -1)
#' uniform_noise(0.55, upper_bound = 1.2)
#' uniform_noise(1.4)

uniform_noise = function(image, lower_bound = -0.3, upper_bound = 0.3) {
  try(if(class(image)!="numeric") stop("array contained non-numerics", call. = FALSE))

  image = image + runif(1, min = lower_bound, max = upper_bound)

  return(image)
}
