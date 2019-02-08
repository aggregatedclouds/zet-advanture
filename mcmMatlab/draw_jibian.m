clear
clc
close all
a=[3 0.5];
x = -10:0.1:10;
y1 = a(1)*x.^2 + x + 1;
y2 = a(2)*x.^2 + x + 1;
z1 = 2*a(1) * x + 1;
z2 = 2*a(2) * x + 1;
plot(x,y1,x,y2);grid;
xlabel("the unit time");ylabel("value");
figure()
plot(x,z1,x,z2);
xlabel("the unit time");ylabel("value");grid