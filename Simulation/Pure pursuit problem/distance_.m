function d = distance_(xt, yt, xd, yd)
    k = (xt-xd)*(xt-xd)+(yt-yd)*(yt-yd);
    d = sqrt(k);
end