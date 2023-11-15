# Bayesian-based-Nonlocal-Means-Filtering
Optimized bayesian nonlocal-means algorithm for denoising ultrasound image

# Descriptions
* BayesianNLM.m : the OBNLM algorithm
* getPearsonDistance.m: compute the pearson distance based bayesian framework
* ImgNormalize.m: pre-processing the image (histogram stretching)
* testBayesianNLM.m: test our algorithm using the input (Noise/noisyImage.png) and get the output (despeckledImage.png)

# Reference Paper
Coupé, Pierrick, et al. "Nonlocal means-based speckle filtering for ultrasound images." IEEE transactions on image processing 18.10 (2009): 2221-2229.

# Basic Principle
The blockwise Nonlocal Means algorithm is implemented. The basic principle is shown below:

**Object Function**: <img src="http://latex.codecogs.com/svg.latex?NL(u)(B_j) = \sum_{i\in\Delta_j}w(B_i,B_j)u(Bi)" border="0"/> 
with <img src="http://latex.codecogs.com/svg.latex? w(B_i,B_j)=\frac{1}{Z^j}e^{-\frac{dp(u(B_i),u(B_j))}{h^2}}" border="0"/>

<img src="http://latex.codecogs.com/svg.latex? B" border="0"/>: The blockwise of image

<img src="http://latex.codecogs.com/svg.latex? dp(u(B_i),u(B_j))" border="0"/>: The pearson distance between blockwise

# Results

The ultrasound image (with speckle):

![noisy image](https://github.com/SanchitaMondal/Bayesian-based-Nonlocal-Means-Filtering/assets/102673516/e56352c9-874a-4b31-ac2b-d0696d0e29a1)




The despeckled ultrasound image:

![despeckled image](https://github.com/SanchitaMondal/Bayesian-based-Nonlocal-Means-Filtering/assets/102673516/e8b6c7fc-0669-4850-a839-e00542e3da7d)



