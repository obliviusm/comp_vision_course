function index = find_template_1D( t, s )
%FIND_TEMPLATE_1D Summary of this function goes here
%   Detailed explanation goes here
    c = normxcorr2(t, s);
    [maxValue rawIndex] = max(c);
    index = rawIndex - size(t, 2) + 1;
end

