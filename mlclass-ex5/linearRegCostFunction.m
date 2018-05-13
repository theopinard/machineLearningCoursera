function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

J = 1/(2*m) * (X*theta-y)' * (X*theta-y) + lambda/(2*m) * theta(2:end)'* theta(2:end);
%grad = zeros(size(theta,1),1);
%size(X)
%size((X*theta-y))
%ysize([0;theta(2:end)])
grad = 1/m * X' * (X*theta-y)+lambda/m * [0;theta(2:end)];
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
