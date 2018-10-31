function val = gaussC(x, y, sigma, center)
    xc = center(1);  %中心点横坐标
    yc = center(2);  %中心点纵坐标
    exponent = ((x-xc).^2 + (y-yc).^2)./(2*sigma);
    val       = (exp(-exponent)); 