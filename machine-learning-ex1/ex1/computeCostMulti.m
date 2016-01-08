function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%calculates the differences between the predicted value and the y value
%for each sample
difference = (X*theta - y);

%gets the sum of the differences divided by the number of samples
J = (1/(2*m)) * difference'*difference;

% =========================================================================

end
