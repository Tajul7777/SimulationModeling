function multiple_bombers()
    t = 1;
    delT = 1;
    tLimit = 300;
    xa = 0;
    ya = 1000;
    xb = 12000;
    yb = 2000;
    xc = 10000;
    yc = 10000;
    xd = 5000;
    yd = 15000;
    va = 60;
    vb = 60;
    vc = 60;
    vd = 60;
    dLimit = 1000;
    %XT = zeros(1,tLimit);
    %YT = zeros(1,tLimit);
    %XD = zeros(1,tLimit);
    %YD = zeros(1,tLimit);
    %flag = 1;
    for i= 1:tLimit
        %disp(xt);
        %XT(i) = xt;
        %YT(i) = yt;
        %XD(i) = xd;
        %YD(i) = yd;
        %d = distance_(xt, yt, xd, yd);
        dAB = distance_(xb, yb, xa, ya);
        dBC = distance_(xc, yc, xb, yb);
        dCD = distance_(xd, yd, xc, yc);
        
        if t>tLimit
            flag = 0;
            break;
        end
        
        t = t+delT;
        
        %delX = xt-xd;
        %delY = yt-yd;
        
        delXAB = xb-xa;
        delYAB = yb-ya;
        
        delXBC = xc-xb;
        delYBC = yc-yb;
        
        delXCD = xd-xc;
        delYCD = yd-yc;
        
        %xt = xt - vt*delT;
        %delS = vd * delT;
        %xd = xd +(delS)*(delX/d);
        %yd = yd +(delS)*(delY/d);
        
        
        %for A
        delSA = va * delT;
        xa = xa +(delSA)*(delXAB/dAB);
        ya = ya +(delSA)*(delYAB/dAB);
        
        %for B
        delSB = vb * delT;
        xb = xb +(delSB)*(delXBC/dBC);
        yb = yb +(delSB)*(delYBC/dBC);
        
        %for C
        delSC = vc * delT;
        xc = xc +(delSC)*(delXCD/dCD);
        yc = yc +(delSC)*(delYCD/dCD);
        
        
        %for D
        xd = xd - vd*delT;
        
        hold on;
        plot(xa,ya,'or','MarkerSize',10,'MarkerEdgeColor',[1 0 0],'MarkerFaceColor',[1 0 0]);
        plot(xb,yb,'or','MarkerSize',10,'MarkerEdgeColor',[0 1 0],'MarkerFaceColor',[0 1 0]);
        plot(xc,yc,'or','MarkerSize',10,'MarkerEdgeColor',[0 0 1],'MarkerFaceColor',[0 0 1]);
        plot(xd,yd,'or','MarkerSize',10,'MarkerEdgeColor',[1 0 1],'MarkerFaceColor',[1 0 1]);
        %hold off;
    end
        
    %if flag == 1
     %   disp('Defender Wins');
    %else
     %   disp('Defense Loses');
    %end
    
    %plot(XT,YT,'MarkerSize',10);
    %hold on;
    %plot(XD,YD,'MarkerSize',10);
    
end