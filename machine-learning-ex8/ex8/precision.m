function p = precision(pred, y)
	[tp fp tn fn] = truthTable(pred, y);

	p = tp/(tp + fp);
end
