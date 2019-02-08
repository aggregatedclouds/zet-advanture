clc
clear
%when sigma > 1
% i : The number of people who are infected at time t
%sigma : Percentage of persons effected during infection
lambda=0.01;
sigma=3;
i=0.06;
%[t,i1]=ode45(@epidemicm,[0,2200],1-i,[],lambda,sigma);
[t,i2]=ode45(@epidemicm,[0,2200],i,[],lambda,sigma);
%[t,i1,i2] = maxfun(t,i1,i2);
%plot(t,i1);hold on
stem(t,i2,'.');axis([-20 2300 -0.2 0.9]);grid
xlabel("unit time t");ylabel("percent");
legend('\sigma>1' );