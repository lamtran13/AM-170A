function dy = func(t,y)
a=10; b=0.02; c=20; d=0.02;
A1=0.12; B1=pi./2; C1=1.43;
T = A1.*sin(2.*pi.*t+B1)+C1; 
dy = [a.*T.*y(1) - b.*y(1).*y(2); 
      -c.*y(2) + d.*y(1).*y(2)];