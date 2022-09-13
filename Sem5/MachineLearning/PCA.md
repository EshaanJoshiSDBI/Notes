# Principal Component Analysis
> It is a feature extraction technique, it is the process of computing the principal components and using them to perform a change of basis on the data. The principal components of a collection of points in a real coordinate space are a sequence of `p` unit vectors, where i-th vector is the direction of a line that best fits the data while being orthogonal to the first i-1 vectors.

### What are principal components
- Principal components are new variables that are constructed as linear combinations or mixtures of the initial variables, these combinations are uncorrelated and most of the info within the initial variables are compressed into the first components.
- Geometrically principal components represent the directions of the data that explain a maximal amount of variance, basically the lines the capture most information of the data.
- The larger the variance carried by a line, the more the information it has.

### Steps of PCA
1. Standardization
- Standardize the range of the continuous variables so that each of them contributes equally to the analysis, as PCA is sensitive regarding the variances of the initial variables. Basically if there are large differences between the ranges of initial variables, those variables with larger variances will dominate the others with a lower variance and lead to biased results.
2. Computing Covariance Matrix
- We create a `p x p` symmetric matrix (p is the # of dimensions) that has as entries the covariances associated with all possible pairs of the initial variables. For example, for a three-dimensional data set with 3 variables x, y and z the covariance matrix is a 3x3 matrix.

|Cov(x,x)|Cov(x,y)|Cov(x,z)|
|:------:|:------:|:------:|
|Cov(y,x)|Cov(y,y)|Cov(y,z)|
|Cov(z,x)|Cov(z,y)|Cov(z,z)|

3. Compute the eigenvectors and eigenvalues of the covariance matrix to identify the principal components.
- Eigenvectors and eigenvalues are the linear algebra concepts that we need to compute from the covariance matrix in order to determine the principal components of the data. Eigenvectors of the covariance matrix are actually the directions of the axes where there is the most variance and that we call principal components. Eigenvalues are simply the coefficients attached to eigenvectors, which give the amount of variance carried in each principal component, by ranking your eigenvectors in order of their eigenvalues, highest to lowest, you get the principal components in order of significance.
4. Feature vector
- Here we decide whether to keep all the components or discard the ones with lesser significance and form with the remaining ones a matrix of vecotrs that we call Feature vector.
5. Recasting the data along the principal component axes
- The data still remains in terms of the original axes, hence using the feature vector formed using the eigenvectors of the covariance matrix, to reorient the data from the original axes to the ones represented by the principal components. This can be done by multiplying the transpose of the original data set by the transpose of the feature vector. _Final dataset = FeatureVector<sup>T</sup> * StandardizedOriginalDataSet<sup>T</sup>_