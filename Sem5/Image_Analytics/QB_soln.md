* Q1 PIL is Python Image Library
* Q2 In order to import opencv library the syntax is `import cv2`
* Q3 In order to import Image using PIL the syntax is `Image.open`
* Q4 In order to apply gaussian filter the syntax is `ImageFilter.GaussianBlur`
* Q5 Histogram requires image to be in **grayscale** format
* Q6 In order to convert Image to gray scale using PIL, syntax is `Image.open().convert('L')`
* Q7 In order to crop an image we use `crop()`
* Q8 In order to apply edge detection method filter we use `(imageFilter.FIND_EDGES)`
* Q9 CV in opencv stands for **Computer Vision**
* Q10 In order to read a grayscale image using open cv we use `cv2.imread('img.ext',0)`
* Q11 In order to rotate an image we use `rotate()`
* Q12 In order to get histogram from an image we use `hist(img.flatten(),128)`
* Q13 Image(2D) is a function of `f(x,y)`
* Q14 Opencv is **open source**
* Q15 Image and video analytics can be used for surveillance **True**
#### List any 5 applications of opencv
- Object detection
- Augmented reality
- Gesture recognition
- structure from motion
- motion tracking
- Face recognition
- Automated inspection
- Automated surveillance
- Street viewing
- Image stitching
- Medical image analysis
- Anomaly detection

#### Explain any 2 Image processing algorithms, mention their syntaxes along with it
- **Gaussian Blur**
	+ It is also known as Gaussian smoothing.
	+ The effect of this blurring is similar to looking at the image through a transparent screen.
	+ It is the result of blurring the image by the Gaussian function.
	+ Used to reduce the noise and details in the image.
	+ It is best to divide the process into 2 passes using the separable property of Gaussian blur.
	+ In the first pass a 1-D kernel is used to blur the image in only horizontal or vertical direction.In the second pass the same 1-D kernel is used to blur the remaining direction, resulting effect is the same as convolving a 2-D kernel in a single pass.
	+ Syntax: `img.filter(ImageFilter.GaussianBlur)`
- **Fourier transform image processing**
	+ It decomposes the image into its sine and cosine components.
	+ The sinusoid function consists of:
		* _Magnitude_ : Related to contrast
		* _Spatial frequency_ : Related to brightness
		* _Phase_ : Related to colour information
	+ It is used if we want to access the geometric characteristics of a spatial domain image. As the image is decomposed into its sinusoidal components it is easier to examine certain frequencies of the image
- **Wavelet image processing**
	+ Wavelets are a general way to represent and analyze multiresolution images
	+ Useful for	
		* Image compression
		* Noise removal
	+ They are the functons that are concentrated in time and frequency around a certain point.
	+ Fourier transformation deals with frequencies but does not provide temporal details. To overcome the drawbacks of fourier transformation we can use wavelet transformation.
	+ In image processing it is used to divide information present on an image into two discrete components 'approximations' and 'details'.
	+ Image is passed through 2 filters, high pass and low pass. The image is then decomposed into approximations (low frequency components)and details (high frequency components). If the details are insignificant they can be values as zero without significant impact on the image thereby achieving filtering and compression.
- **Harris corner detection**
	+ It basically find the difference in intensity for a displacement of *(u,v)* in all directions.
	+ The window function is either a rectangular window or a Gaussian window which gives weights to pixels underneath.
	+ The equation which determines whether a window can contain a corner or not is R = det(M) - k(trace(M))<sup>2</sup>
		* where:
		* det(M) = λ1λ2
		* trace(M) = λ1 + λ2
		* λ1 and λ2 are the eigenvalues of M
	+ When |R| is small , the region is flat.
	+ When R < 0, the region is an edge.
	+ When R is large, the region is a corner.
	+ syntax: `cv2.cornerharis(img,blockSize,ksize,k)`
- **Morphological image processing**
	+ It is a collection of non-linear operations related to the shape or morphology of features in an image.
	+ It relies only on the relative ordering of pixel values, not on their numerical values and therefore are especially suited to the processing of binary images.
	+ It probes an image with a small shape or template called a structuring element. The structuring element is positioned in all possible locations in the image and it is compared with the corresponding neighbourhood of pixels. The structuring element is a small binary image, i.e a small matrix of pixels each with a value of zero or one.
	+ syntax: `cv2.erode()`, `cv2.dilate()`, `cv2.morphologyEx(img,cv2.MORPH_OPEN,kernel)`, `cv2.morphologyEx(img,cv2.MORPH_CLOSE,kernel)`
6. Define Image
- Image is the visual representation of something. A computer/digital image is the binary representation of the visual data.
- An image is a 2D function *f(x,y)*. Where x and y are planar co-ordinates and amplitude of any pair of co-ordinated which is called the intensity of the image.
- A computer image is a picture composed of an array of elements called pixels.

### Explain PIL library
- The Python Imaging Library adds image processing capabilities to our python interpreter.
- It provides extensive file format support, and efficient internal representation and fairly powerful image processing capabilities.
- The core image library is designed for fast access to data stored in a few basic pixel formats. It should provide a solid foundation for a general image processing tool.
- It has standard procedures for iamge manipulations like:
	+ Image filtering
	+ Image bluring
	+ Image smoothing
	+ Image edge detection
	+ Image enhancing
	+ Image sharpening
	+ Image contring
	+ Adjusting Brightness
	+ Pre-pixel manipulations
	+ Masking and transperancy handling
	+ Adjusting Colour
	+ Adjusting Contrast
- To install PIL we can use the following command: `pip install Pillow`
- How to read an image using PIL
```python
from PIL import Image
img = Image.open('image.ext')
```
- resizing an image
```python
img.resize((16,9))
```
- rotating an image
```python
img.rotate(90)
```
- cropping an image
```python
img.crop((100,100,200,200))
```

----
1. List down the applications of Image and Video Analytics
- Content moderation
- Text detection
- Video segment detecton
- Face recognition
- Object detection
- Medical Imaging
- Anomaly detection in products
- Motion tracking

2. List down 5 Image Processing Algorithms
* Gaussian Blur
* Fourier transform image processing
* Wavelet image processing
* Harris corner detection
* Morphological image processing

---
## Neural networks
- Neural networks reflect the behavoir of the human brain, allowing computer programs to recognize patterns and solve common problems in the fields of AI, machine learning and deep learning.
- ANNs are compromised of a node layers, containing an input layer, one or more hidden layers and an output layer. Each node connects to another and has an associated weight and threshold.
- If the output of any individual node is above the specified threshold value, that node is activated, sending data to the next layer of the network.
- Neural networks can be of 3 types:
	+ CNN
		* Similar to feedforward networks but they're usually utilized for image recognition, pattern recognition or computer vision. These networks harness principles from linear algebra, particularly matrix multiplication to identify patterns within an image.
	+ RNN
		* Identified by their feedback loops. These learning algorithms are primarily leveraged when using time-series data to make predictions about future outcomes, such as stock market predictions or sales forecasting.
	+ Feedforward neural networks
		* Comprised of an input layer, hidden layer(s) and an output layer. Also commonly reffered to as MLPs. They comprise of sigmoid neurons, not perceptrons.
		

### Terminology
- Sequential: ML models that input or output data sequences.
- normalize: processes the data to obtain mean close to 0
- Epochs: Each time we train our model with every data example we have, we complete an “epoch”. Models are typically trained for tens to hundreds of epochs until their losses are reduced to tiny values.
- Loss Function: The loss, or error, is a function that measures the “wrongness” of the model.
- Dense Layer (revisited): If an input is fed to many perceptrons at once, we can simplify the math by “joining” the weights of each perceptron as a matrix, creating the dense layer: D(x; W) = a(x ⋅ W).
- The perceptron is a weighted sum followed by an activation function. Formally, P(x; w) = a(x ⋅ w).
- Activation Function: These are ordinary non-linear functions used in DL that have the sole purpose of receiving input and making it non-linear.
- Flatten: Converts 2D arrays into a continuous long array
- Feed forward: Flow of info in forward direction
- Back propogation: Weights of network connections are repeated by adjusted to minimize the difference actual and predicted output

### Loss function
- Mean squared error
- Binary crossentropy
- Categorical crossentropy
- Spars categorical crossentropy

### Metrics
- Accuracy metrics
- Probablistic metrics
- Regression metrics
- Image segmentation metrics