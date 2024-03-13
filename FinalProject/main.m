clear all;clc;
water_temp = readtable('artic_temp.csv');
tspan = 2019:0.01:2022;
L = mean(water_temp.Longyearbyen_Artic);

[t,y] = ode45(@func, tspan , [1000 100]);

figure(1);
plot(t,y(:,1),'k', 'LineWidth', 3);
ax = gca;
ax.FontSize = 30;
xlabel('Time', 'FontSize',30);
ylabel('Population', 'FontSize',30);
hold on 
plot(t,y(:,2),	'm', 'LineWidth', 2);
legend('Phytoplankton', 'Zooplankton');
title('\fontsize{25} Phytoplankton & Zooplankton in Arctic Ocean, Longyearbyen, Svalbard');

