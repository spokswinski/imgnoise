# This script tracks how the data in data/ was generated.
# pngs must be in working directory in order to read them. Use getwd() and setwd()

library(png)
hadley.png = readPNG("hadley.png")

hadley.noise = imgnoise(hadley.png, "salt_and_pepper")

writePNG(hadley.noise, "hadley_noise.png")

devtools::use_data(hadley.png)
devtools::use_data(hadley.noise)
