function min_angle = MinRad2 (curr_angle)

min_angle = curr_angle;
while abs(min_angle)> double(2*sym(pi))
    if  min_angle > double(2*sym(pi))
        min_angle = min_angle - double(2*sym(pi));
    else 
        min_angle = min_angle + double(2*sym(pi));
    end
end

% disp(['min angle:' num2str(min_angle)])
limit_threshold = 30 * pi/180; %EM RAD!

if min_angle > double(sym(pi)) - limit_threshold
    min_angle = -double(2*sym(pi)) + min_angle;
elseif min_angle < -double(sym(pi)) - limit_threshold
    min_angle = double(2*sym(pi)) + min_angle;   
end
