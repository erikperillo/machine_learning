function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
%number of training examples
m = length(y); 

%calculates the differences between the predicted value and the y value
%for each sample
squared_differences = (X*theta - y) .^ 2;

%gets the sum of the differences divided by the number of samples
J = (1/(2*m)) * sum(squared_differences);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
