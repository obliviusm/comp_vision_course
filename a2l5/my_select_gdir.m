% Gradient Direction
function  result = my_select_gdir(gmag, gdir, mag_min, angle_low, angle_high)
% TODO Find and return pixels that fall within the desired mag, angle range
    sub_gmag = gdir;
    for i = 1:size(gdir, 1)
        for j = 1:size(gdir, 2) 
            if (gdir(i, j) >= angle_low) && (gdir(i,j) <= angle_high) && gmag(i,j) > mag_min
                sub_gmag(i, j) = 1;
            else
                sub_gmag(i, j) = 0;
            end
       end
    end
    result = sub_gmag;
end

