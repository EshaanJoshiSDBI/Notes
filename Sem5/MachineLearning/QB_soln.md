## Linear Regression
- Linear regression attempts to model the relationship between two or more variables by fitting a linear equation to observed data.
- The most common method for fitting a regression line is the method of least-squares. This method calculates the best-fitting line for the observed data by minimizing the sum of squares of the vertical deviations from each data point to the line.
- We can also optimize the values of the coefficients by iteratively minimizing the error of the model on your training data. This method is called gradient descent.
- It starts with random values for each coefficient. The sum of the squared errors are calculated for each pair of input and output values. A learning rate is used as a scale factor and the coefficients are updates in the direction towards minimizing the error. This process is repeated until a minimum sum squared error is achieved or no further improvement is possible.
- The linear regression model is represented as: `y = Bo + B1*x1 + B2*x2 + .... + Bnxn`
- It has 5 key assumptions:
	+ Linear relationship
	+ Multivariate normality
	+ No multicollinearity
	+ No auto-correlation
	+ Homoscedasticity
- The cost function of linear regression is **Mean Squared Error** (MSE)<img src="https://www.gstatic.com/education/formulas2/443397389/en/mean_squared_error.svg" />
- Challenges with Linear regression:
	+ Non-linearity of the response-predictor relationships: It occurs due to the assumportion for linearity, if the actual relation is not linear then accuracy drops significantly and any conclusions become null & void.
	+ Correlation of error terms: May occur due to the assumption that the error terms are uncorrelated, there might be correlation among error terms eg: correlation in error due  to the diet followed, exercise routing, etc when observing height and weight. If the error terms are correlate then the standard error in the model coefficients gets underestimated.
	+ Heteroscedasticity: This can occur if the assumption of homoscedasticity is not met, i.e the error terms must have a constant variance. Non-constant variance in errors can be identified by the presence of funnel shape in residual plots.
	+ Collinearity / Multi-collinearity: Occurs when the assumption of no multicollinearity is not met. Eg: height & weight, income & experience, etc. Issues such as decrease in model accuracy, unable to infer the individual effect of predictors on response will arise.
	+ Presence of outliers and high leverage points: Linear regression model is highly affected by the presence of outliers and leverage points.
	
## Types of errors
###### error = Bias + Variance + Irreducible error
- There are two main types of errors in ML models.
1. Reducible errors: can be further divided into two types
	1. Bias
	- Bias is the difference between our actual and predicted values. Bias is the simple assumption that our model makes about our data to be able to predict new data.
	- High bias gives a large error in both training and testing data. Hence we must try to keep it low to avoid the problem of underfitting.
	2. Variance
	- Variance is the model's sensitivity to fluctuations in the data. Model may overlearn from the data and hence consider noise / trivial features as important.
	- It shows the variability of model prediction for a given data point which tells us spread of our data.
	- A model with high variance has a very complex fit to the training data, and hence causes overfitting.
3. Irreducible errors
- Errors which will always be present in a ML model, because of unknown variables and cannot be reduced. Basically these are random errors which cannot be explained by model.
### How to reduce Bias
- Sample bias: Such bias can be reduced by covering all cases we expect our model to be exposed to by examining the domain of each feature and making sure to have a balanced evenly-distributed data covering all of it.
- Exclusion bias: Happens as a result of excluding some features from our dataset while cleaning the data.
- Choosing the correct learning model
- Using the right training dataset
- Performing data processing mindfully
- Reduce infrastructural issues: human, electronic or mechanical sensors.
### What happens when our model is too complex
- The model can end up overfitting.
### What happens when variance increases
- The chances of inaccurate predictions increases. High variance causes underfitting in the ML model.
### What are the ways to increase bias and reduce variance in our model
- We can use regularization to add a small bias to our model which helps reducing the variance.
- The commonly used regularization techniques are:
	+ Lasso regression
		* We add absolute value of magnitude of coefficients as penalty term to the loss function.
	+ Ridge regression
		* We add square of magnitude of coefficients as penalty term to the loss function
	+ Elastic net
		* Combination of Lasso and Ridge regression
	+ Dropout regularization
		* Randomly ignoring certain nodes in a layer during training.
### What is bias-variance trade off
- We have to make a trade-off between bias and variance to get a good model that can be used.
- It is the property of a model that the variance of the parameter estimated across samples can be reduced by increasing the bias in the estimated parameters.
- The problem is the conflict in trying to simultaneously minimize these two sources of error that prevent supervised learning algorithms from generalizing beyond their training set.
- If algorithms fit too simple then it may have high bias and low variance, if it fits too complex then it may have high variance and low bias.
- Hence we need to find a good balance between the bias and variance of the model we have used. This tradeoff in complexity is what is reffered to as bias and variance tradeoff. An optimal balance of bias and variance should never overfit or underfit the model.
### Techniques for bias-variance trade off
- Lasso regression.
- Ridge regression.
- Elastic net.
- In K-Nearest Neighbors a high value of k leads to high bias and low variance.
- Using Ensemble learning (eg: bagging helps reducing variance)
### What is regularization
- Regularization is a technique used to reduce the errors by fitting the function appropriately on the given training set and avoid overfitting.
- A small bias is added into model so that it doesn't learn everything from data.
- We tune the function by adding an additional penalty term in the error function.
- Types of regularization:
	+ Lasso regression
		- We add "absolute value of magnitude" of coefficient as penalty term to the loss function (L).<img src="Screenshot from 2022-08-09 20-19-56.png"/>
		+ λ denotes the amount of shrinkage
		+ λ = 0 implies all features are considered
		+ λ = ∞ implies no features are considered
		+ The bias increases with increase in λ
		+ The variance increases with decrease in λ
		+ When to use lasso:
			* If the dataset has high dimensionality and high correlation we can use lasso regression.
			* When we are okay with dropping some features.
	- Ridge regression
		+ We add squared magnitude of coefficient as penalty term to the loss function (L).<img src="Screenshot from 2022-08-09 20-27-32.png"/>
		+ When to use ridge:
			* If we have more parameters than samples then we can use ridge regression.
			* When we cannot drop any feature.
	* Elastic net
		* It emerged as a result of critique on lasso, whose variable selection can be too dependent on data and thus unstable. The solution was to to combine the penalties of ridge regression and lasso regression.
			
### Cost function of Lasso regression
<img src="Screenshot from 2022-08-09 20-31-18.png"/>
### Cost function of Ridge regression
<img src="Screenshot from 2022-08-09 20-32-05.png"/>
### Cost function of Elastic net regularization
<img src="Screenshot from 2022-08-09 20-30-49.png"/>

- loss = sum i=0 to n (y_i – yhat_i)^2
- l2_penalty = sum j=0 to p beta_j^2
- l1_penalty = sum j=0 to p abs(beta_j)
- elastic_net_penalty = (alpha * l1_penalty) + ((1 – alpha) * l2_penalty)
- elastic_net_loss = loss + (lambda * elastic_net_penalty)
