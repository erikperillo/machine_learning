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

%intermediate values for calculating cost
prediction = X*theta;
diffs = prediction - y;
%calculating cost
J = 0.5*(1/m)*(diffs'*diffs + lambda*(theta(2:end)'*theta(2:end)));

%calculating grad
unreg_grad_term = X'*diffs;
%adding regularization term
reg_grad_term = [0; theta(2:end)];
%final gradient
grad = (1/m)*(unreg_grad_term + lambda*reg_grad_term);

% =========================================================================

grad = grad(:);

end
