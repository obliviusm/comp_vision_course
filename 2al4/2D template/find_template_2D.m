function [yIndex xIndex] = find_template_2D( template, img )
% TODO: Find template in img and return [y x] location
% NOTE: Turn off all output from inside the function before submitting!
    c = normxcorr2(template, img);
    [maxV,I] = max(c(:));
    [yRawIndex, xRawIndex] = ind2sub(size(c),I);
    yIndex = yRawIndex - size(template, 1) + 1;;
    xIndex = xRawIndex- size(template, 2) + 1;;
end