# imgnoise

The goal of imgnoise is to provide mathematicians and researchers with a convenient method for generating noise in images and other signals stored as arrays in R.

Currently, the four types of noise supported are Gaussian, Salt and Pepper, Speckle, and Uniform Noise.

## Installation

You can install imgnoise from github with:

  ```r
# install.packages("devtools")
devtools::install_github("rayheberer/imgnoise")
```

## Example

This is a basic example which shows you how to implement gaussian noise.

```r
## Loading an image
library(png)
logo = readPNG(system.file("img", "Rlogo.png", package="png"))
## Applying Noise
imgnoise(logo, "salt_and_pepper", noise_density = 0.1)
```
LogoSaltPepperNoiseDensityPoint1.png is the result, and you can extrapolate these to the other example-pngs in example-pngs.

![](/example-pngs/Logo.png)
![](/example-pngs/LogoSaltPepperNoiseDensityPoint1.png)
