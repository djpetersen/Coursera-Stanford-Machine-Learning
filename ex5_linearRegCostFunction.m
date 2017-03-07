function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% Adding a column of 1s

% X2 = [ones(size(X,1),1) X] - not required, done in function call

% Calculating cost function

predictions = X*theta;
errors = y-predictions;
sumsqerr = sumsq(errors);
J = 1/(2*m)*sumsqerr + lambda/(2*m)*(sumsq(theta)-theta(1)^2);

% Calculating Gradient

predictions = X*theta; % predictions
errors = predictions - y; % errors
grad = 1/m*X'*errors + lambda/m*[0;theta(2:end)]; 










% =========================================================================

grad = grad(:);

end
