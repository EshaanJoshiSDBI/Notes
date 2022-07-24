# Feature selection
**It is the process of reducing the number of input variables when developing a predictive model**
- Feature elimination
- Feature extraction
	- Principle Component Analysis
		- Transforms a large set of variables into a smaller one that still contains most of the information in the large set.
		- It is an unsupervised learning algorithm.
		- *Idea of PCA is to reduce number of variables of a data set, while preserving as much information as possible.*
		- It identifies the correlations and patterns in the dataset so that it can be transformed into a data set of significantly lower dimension without loss of any important information.
		- Steps:
		1. Standardization.
		2. Computing Covariance Matrix.
		3. Calculating eigenvector and eigenvalue.
		4. Compute principal components.
		5. Reduce data dimentsion.
	- Factor Analysis
		- Can be used as a standalone technique in analysis.
		- Factor analysis combines the variables in such a way that the newly created variable has some meaning.