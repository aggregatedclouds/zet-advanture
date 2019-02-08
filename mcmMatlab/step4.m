clc
clear
%µ± sigma>1Ê±
lambda=0.01;
sigma=2;
[t,i1]=ode45(@crb1,[0,1000],0.9,[],lambda,sigma);
[t,i2]=ode45(@crb1,[0,1000],0.2,[],lambda,sigma);
plot(t,i1,'*',t,i2,t,1/2,'.')
legend('\sigma>1' )