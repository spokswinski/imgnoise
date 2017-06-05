gaussian_noise = function(image, peak = 0, variance = 0.01) {
  standard_deviation = sqrt(variance)
  return(image + rnorm(1, mean = peak, sd = standard_deviation))
}
