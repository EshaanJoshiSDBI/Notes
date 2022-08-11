|Name:|Eshaan|
|----|----|
|Semester:|BSC Sem V Data Science|
|Roll No:|716|

----
1. Explain opencv2 and its functions
- OpenCV stands for Open Source Computer Vision.
- OpenCV is a cross-platform open source computer vision and machine learning software library. It was built to provide a common infrastructure for computer vision applications and to accelerate the use of machine preception.
- It was developed by Intel with its first release in 2006.
- To install opencv2's python library the following command can be used: `pip install opencv-python`
- To use the library in our program we can use the following command `import cv2`
- Functions of OpenCV
	+ Image enhancement
	+ Image filtering
	+ Image resizing
	+ Image reshaping
	+ Object detection
	+ Real time video processing
- Applications of OpenCV
	+ object detection
	+ Augmented reality
	+ Gesture recognition
	+ structure from motion
	+ Egomotion estimation
	+ motion tracking
	+ human computer interaction
2. Explain PIL and its respective functions
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
- To use PIL in our program we can use the following command `from PIL import Image`
	+ Command to read an image `Image.open(<path to image file>)`
	+ Command to read an image in grayscale `Image.open(<path to image file>).convert('L')`
	+ Command to resize an image `Image.resize((69,420))`
	+ Command to resize an image `Image.crop(<top>,<bottom>,<right>,<left>)`
	+ Command to resize an image `Image.rotate(90)`
3. List down the applications of Image and Video Analytics
- Content moderation
- Text detection
- Video segment detecton
- Face recognition
- Object detection
- Medical Imaging
- Anomaly detection in products
- Motion tracking
4. List down 5 Image Processing Algorithms
	1) Gaussian Blur
	2) Fourier transform image processing
	3) Wavelet image processing
	4) Harris corner detection
	5) Morphological image processing
5. Explain image processing algorithm in detail
- **Gaussian Blur**
	+ It is also known as Gaussian smoothing.
	+ The effect of this blurring is similar to looking at the image through a transparent screen.
	+ It is the result of blurring the image by the Gaussian function.
	+ Used to reduce the noise and details in the image.
	+ It is best to divide the process into 2 passes using the separable property of Gaussian blur.
	+ In the first pass a 1-D kernel is used to blur the image in only horizontal or vertical direction.In the second pass the same 1-D kernel is used to blur the remaining direction, resulting effect is the same as convolving a 2-D kernel in a single pass.
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
- **Morphological image processing**
	+ It is a collection of non-linear operations related to the shape or morphology of features in an image.
	+ It relies only on the relative ordering of pixel values, not on their numerical values and therefore are especially suited to the processing of binary images.
	+ It probes an image with a small shape or template called a structuring element. The structuring element is positioned in all possible locations in the image and it is compared with the corresponding neighbourhood of pixels. The structuring element is a small binary image, i.e a small matrix of pixels each with a value of zero or one.
6. Define Image
- Image is the visual representation of something. A computer/digital image is the binary representation of the visual data.
- An image is a 2D function *f(x,y)*. Where x and y are planar co-ordinates and amplitude of any pair of co-ordinated which is called the intensity of the image.
- A computer image is a picture composed of an array of elements called pixels.