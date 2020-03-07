function bomber()
    t = 1;
    delT = 1;
    tLimit = 300;
    xd = 0;
    yd = 0;
    xt = 10000;
    yt = 10000;
    vd = 60;
    vt = 50;
    dLimit = 1000;
    XT = zeros(1,tLimit);
    YT = zeros(1,tLimit);
    XD = zeros(1,tLimit);
    YD = zeros(1,tLimit);
    flag = 1;
    for i= 1:tLimit
        %disp(xt);
        XT(i) = xt;
        YT(i) = yt;
        XD(i) = xd;
        YD(i) = yd;
        d = distance_(xt, yt, xd, yd);
        if t>tLimit
            flag = 0;
            break;
        end
        
        if d<=dLimit
            break;
        end
        
        t = t+delT;
        delX = xt-xd;
        delY = yt-yd;
        xt = xt - vt*delT;
        delS = vd * delT;
        xd = xd +(delS)*(delX/d);
        yd = yd +(delS)*(delY/d);
        hold on;
        plot(xt,yt,'or','MarkerSize',10,'MarkerEdgeColor',[0 1 0],'MarkerFaceColor',[0 1 0]);
        plot(xd,yd,'or','MarkerSize',10,'MarkerEdgeColor',[1 0 0],'MarkerFaceColor',[1 0 0]);
        %hold off;
    end
        
    if flag == 1
        disp('Defender Wins');
    else
        disp('Defense Loses');
    end
    
    %plot(XT,YT,'MarkerSize',10);
    %hold on;
    %plot(XD,YD,'MarkerSize',10);
    
end