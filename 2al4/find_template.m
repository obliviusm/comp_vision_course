% Find template 1D

% Test code:
s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
t = [1 1 0 -1];
disp('Signal:'), disp([1:size(s, 2); s]);
disp('Template:'), disp([1:size(t, 2); t]);

index = find_template_1D(t, s);
% index = imfilter(s, t, 0);
% ind = 0;
% for i = 1:size(s, 2)
%     if isequal(s(i:i+2), t)
%        ind = i;
%        break
%     end
% end
disp('Index:'), disp(index);