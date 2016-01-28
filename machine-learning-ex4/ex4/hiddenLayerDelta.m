function d = hiddenLayerDelta(theta, delta, s)

	d = (theta'*delta) .* sigmoidGradient(s);

end
