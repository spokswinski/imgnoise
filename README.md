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

![](/example-pngs/LogoSaltPepperNoiseDensityPoint1.png)

For reference, the un-noised image:
![](/example-pngs/Logo.png)

## Other Examples

```r
imgnoise(logo, "gaussian")
```
![](/example-pngs/LogoGaussian.png)

```r
imgnoise(logo, "gaussian", variance = 0.5)
```
![](/example-pngs/LogoGaussianVarPoint5.png)

```r
imgnoise(logo, "salt_and_pepper")
```
![](/example-pngs/LogoSaltPepper.png)

```r
imgnoise(logo, "speckle")
```
![](/example-pngs/LogoSpeckle.png)

```r
imgnoise(logo, "speckle", variance = 0.08)
```
![](/example-pngs/LogoSpeckleVarPoint08.png)

```r
imgnoise(logo, "uniform")
```
![](/example-pngs/LogoUniform.png)

```r
imgnoise(logo, "uniform", lower_bound = -0.5, upper_bound = 0.5)
```
![](/example-pngs/LogoUniformBoundsNegativePointFivePointFive.png)
