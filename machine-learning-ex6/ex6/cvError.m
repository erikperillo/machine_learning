function err = cvError(pred, y)
	err = mean(double(pred ~= y));
end
