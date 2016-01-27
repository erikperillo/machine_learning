function h = feedForward(X, theta1, theta2)

	%appending bias to X
	X = [ones(size(X, 1), 1) X];
	a2 = activation(theta1*X')';
	%appending bias to second layer 
	a2 = [ones(size(a2, 1), 1) a2];
	a3 = activation(theta2*a2');
	h = a3;

end
