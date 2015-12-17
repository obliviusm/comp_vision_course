% Test code:
tablet = imread('tablet.png');
% imshow(tablet);
glyph = tablet(75:165, 150:185);
% imshow(glyph);

[y x] = find_template_2D(glyph, tablet);
disp([y x]); % should be the top-left corner of template in tablet

% Plot where the template was found
colormap('gray'), imagesc(tablet);
hold on;
plot(x, y, 'r+', 'markersize', 16);
hold off;