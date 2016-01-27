function c = partialCost(x, y)
	%computes the partial cost for a neural network.

	c = -y .* log(x) - (1.0 - y) .* log(1.0 - x);

end
