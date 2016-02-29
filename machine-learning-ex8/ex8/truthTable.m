function [tp fp tn fn] = truthTable(pred, y)
	tp = sum(pred & y);
	fp = sum(pred & ~y);
	tn = sum(~pred & ~y);
	fn = sum(~pred & y);
end
