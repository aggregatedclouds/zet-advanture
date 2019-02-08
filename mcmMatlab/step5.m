%sigma=1ʱ
clc
clear
lambda=0.01;
sigma=1;
[t,i1]=ode45(@crb1,[0,1000],0.9,[],lambda,sigma);
plot(t,i1)
legend('\sigma=1')