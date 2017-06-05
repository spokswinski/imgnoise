uniform_noise = function(image, lower_bound, upper_bound) {
  return(image + runif(1, min = lower_bound, max = upper_bound))
}
