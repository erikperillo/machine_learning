function vals = powers(const, num, pow)
	vals = const * ones(1, num);	

	for i = 2:num
		vals(1, i:end) *= pow;
	end
end
