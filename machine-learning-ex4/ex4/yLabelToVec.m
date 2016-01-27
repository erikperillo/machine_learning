function y = yLabelToVec(labels)
	%takes a row vector of labels and returns a matrix were each row is
	%a row vector of max(labels) elements where only the labelth element is 1
	%and the rest is zero.

	num_labels = max(labels);	
	num_samples = length(labels);

	y = repmat(linspace(1, num_labels, num_labels), num_samples, 1) == labels;
end
