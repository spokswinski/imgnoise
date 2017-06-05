speckle_noise = function(intensity, variance = 0.04) {
  upper_bound = sqrt(variance*12) / 2
  lower_bound = upper_bound * (-1)
  random_noise = runif(1, min = lower_bound, max = upper_bound)
  return(intensity + random_noise*intensity)
}
