%assumes theta and x are col vectors, both of the same dimension
function ret = h(theta, x)
	ret = theta'*x;	
end
