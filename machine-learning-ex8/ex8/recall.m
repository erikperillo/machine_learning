function r = recall(pred, y)
	[tp fp tn fn] = truthTable(pred, y);

	r = tp/(tp + fn);
end
