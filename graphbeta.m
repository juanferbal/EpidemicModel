close all 
clear all
clc

% beta variable
for i = 0.33:0.01:0.40
[Si,Ibi]=seirbeta(i);
figure(1)
hold on
plot(Si,Ibi)
end
hold off

% gamma variable
for i = 0.015:0.001:0.022
[Si,Ibi]=seirgamma(i);
figure(2)
hold on
plot(Si,Ibi)
end
hold off

% alphae variable
for i = 0.03:0.01:0.11
[Si,Ibi]=seiralphae(i);
figure(3)
hold on
plot(Si,Ibi)
end
hold off