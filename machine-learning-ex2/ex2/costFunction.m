function [J, grad] = costFunction(theta, X, y)
	%COSTFUNCTION Compute cost and gradient for logistic regression
	%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
	%   parameter for logistic regression and the gradient of the cost
	%   w.r.t. to the parameters.

	% Initialize some useful values
	m = length(y); % number of training examples

	% ====================== YOUR CODE HERE ======================
	% Instructions: Compute the cost of a particular choice of theta.
	%               You should set J to the cost.
	%               Compute the partial derivatives and set grad to the partial
	%               derivatives of the cost w.r.t. each parameter in theta
	%
	% Note: grad should have the same dimensions as theta
	%

	%computing theta'*x for each x sample in X
	z = X*theta;
	%getting the prediction h(x) for each X
	h = sigmoid(z);

	%the first part off addition covers the case we have a posivite result (y=1)
	%the second covers the case we have a negative result (y=0)
	costs = (-y .* log(h)) + ((y-1) .* log(1 - h));
	%computing cost
	J = (1/m)*sum(costs);

	%getting differences for partial derivatives
	differences = h - y;
	%computing gradients
	grad = (1/m)*X'*differences;
	% =============================================================
end
