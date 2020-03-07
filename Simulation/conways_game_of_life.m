n=5;

g = zeros(n,n);
g1 = zeros(n,n);
g(2,3)=1;
g(2,4)=1;
g(2,5)=1;
g(3,2)=1;
g(3,3)=1;
g(3,4)=1;


c=0;
flag=0;

disp('Generation 1:');
disp(g);

for k = 2:5

for i = 1:n
   for j = 1:n
       if i==1 && j==1
         if g(i,j+1)==1
             c=c+1;
         end
         if g(i+1,j+1)==1
             c=c+1;
         end
         if g(i+1,j)==1
             c=c+1;
         end
         
       elseif i==5 && j==1
         if g(i,j+1)==1
             c=c+1;
         end
         if g(i-1,j+1)==1
             c=c+1;
         end
         if g(i-1,j)==1
             c=c+1;
         end
         
       elseif i==1 && j==5
         if g(i,j-1)==1
             c=c+1;
         end
         if g(i+1,j-1)==1
             c=c+1;
         end
         if g(i+1,j)==1
             c=c+1;
         end
         
       elseif i==5 && j==5
         if g(i,j-1)==1
             c=c+1;
         end
         if g(i-1,j-1)==1
             c=c+1;
         end
         if g(i-1,j)==1
             c=c+1;
         end
         
       elseif i==1
         if g(i,j-1)==1
             c=c+1;
         end
         if g(i+1,j-1)==1
             c=c+1;
         end
         if g(i+1,j)==1
             c=c+1;
         end
         if g(i+1,j+1)==1
             c=c+1;
         end
         if g(i,j+1)==1
             c=c+1;
         end
         
         
       elseif i==5
         if g(i,j-1)==1
             c=c+1;
         end
         if g(i-1,j-1)==1
             c=c+1;
         end
         if g(i-1,j)==1
             c=c+1;
         end
         if g(i-1,j+1)==1
             c=c+1;
         end
         if g(i,j+1)==1
             c=c+1;
         end
         
       elseif j==1
         if g(i-1,j)==1
             c=c+1;
         end
         if g(i-1,j+1)==1
             c=c+1;
         end
         if g(i,j+1)==1
             c=c+1;
         end
         if g(i+1,j+1)==1
             c=c+1;
         end
         if g(i+1,j)==1
             c=c+1;
         end
         
       elseif j==5
         if g(i-1,j)==1
             c=c+1;
         end
         if g(i-1,j-1)==1
             c=c+1;
         end
         if g(i,j-1)==1
             c=c+1;
         end
         if g(i+1,j-1)==1
             c=c+1;
         end
         if g(i+1,j)==1
             c=c+1;
         end
         
       else
         if g(i-1,j-1)==1
             c=c+1;
         end
         if g(i-1,j)==1
             c=c+1;
         end
         if g(i-1,j+1)==1
             c=c+1;
         end
         if g(i,j+1)==1
             c=c+1;
         end
         if g(i+1,j+1)==1
             c=c+1;
         end
         if g(i+1,j)==1
             c=c+1;
         end
         if g(i+1,j-1)==1
             c=c+1;
         end
         if g(i,j-1)==1
             c=c+1;
         end
         
       end
       
       if g(i,j)==1
          if c<2 || c>3
            g1(i,j)=0;
          else
            g1(i,j)=1;  
          end
       elseif g(i,j)==0
          if c==3
            g1(i,j)=1;
          else
            g1(i,j)=0; 
          end
       end
       c=0;
   end
   
end

for i = 1:n
    for j=1:n
        g(i,j) = g1(i,j);
    end
end

fprintf('Generation %d: \n',k);
disp(g);
end