function index = find_template_1D( t, s )
%FIND_TEMPLATE_1D Summary of this function goes here
%   Detailed explanation goes here
    index = 0;
    t_length = size(t,2)-1;
    for i = 1:size(s,2)-t_length
        if isequal(s(i:i+t_length), t)
           index = i;
           break;
        end
    end
end

