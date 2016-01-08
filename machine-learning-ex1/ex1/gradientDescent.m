function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
	%GRADIENTDESCENT Performs gradient descent to learn theta
	%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
	%   taking num_iters gradient steps with learning rate alpha

	% Initialize some useful values
	%number of training examples
	m = length(y); 
	%cost history
	J_history = zeros(num_iters, 1);
	%x1 values (without the ones of the design matrix)
	x = X(:, 2);

	for iter = 1:num_iters

		% ====================== YOUR CODE HERE ======================
		% Instructions: Perform a single gradient step on the parameter vector
		%               theta. 
		%
		% Hint: While debugging, it can be useful to print out the values
		%       of the cost function (computeCost) and gradient here.
		%

		%h(X), prediction with current thetas
		prediction = X*theta;
		%differences between predictions and y values
		difference = prediction - y;
		%partial derivatives relative to x0 (1) and x1
		derivative = X'*difference;
		
		%getting new theta
		theta = theta - alpha*(1/m)*derivative;

		% ============================================================

		% Save the cost J in every iteration    
		J_history(iter) = computeCost(X, y, theta);

	end
end
