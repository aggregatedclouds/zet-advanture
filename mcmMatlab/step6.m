%µ± sigma<1Ê±
clc
clear
lambda=0.01;
sigma=0.5;
[t,i1]=ode45(@crb1,[0,1000],0.9,[],lambda,sigma);
plot(t,i1);axis([0 1000 -0.2 1])
legend('\sigma<1' )