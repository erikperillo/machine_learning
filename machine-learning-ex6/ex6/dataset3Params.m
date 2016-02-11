function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%golden number :^)
%phi = 1.618034;
%creating options
%c_vec = powers(0.005, 10, phi^2);
c_vec = [0.01 0.03 0.1 0.3 1 3 10 30];
sigma_vec = [0.01 0.03 0.1 0.3 1 3 10 30];
%sigma_vec = powers(0.005, 10, phi^2);

%initial parameters
min_cost = 1.0;
C = c_vec(1);
sigma = sigma_vec(1);

for i = 1:length(c_vec)
	for j = 1:length(sigma_vec)
		%printf('on i=%f, j=%f', i, j);

		%getting SVM model for this C and sigma
		model = svmTrain(X, y, c_vec(i), ...
			(@(x1, x2) gaussianKernel(x1, x2, sigma_vec(j))));

		%getting prediction on cross-validation set
		prediction = svmPredict(model, Xval);

		%calculating cost on cross-validation set
		cost = cvError(prediction, yval);
	
		%determining best parameters
		if cost < min_cost
			min_cost = cost;	
			C = c_vec(i);
			sigma = sigma_vec(j);
			%printf('NEW BEST: C=%f, sigma=%f\n', C, sigma);
		end		
	end
end

%printf('BEST: C=%f, sigma=%f\n', C, sigma);

% =========================================================================

end
