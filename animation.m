function animation
clc
close all
load P1
load P2
load P3
load OT
xf = T(2,1);
yf = T(3,1);
t = P1(1,:);
P1 = P1(2:4,:);
P2 = P2(2:4,:);
P3 = P3(2:4,:);
P1 = P1';
P2 = P2';
P3 = P3';
max_x = 1;
max_y = 1;

O = [1 0 0]
OT = [xf yf 0]; % position de la cible

plot_arm(P1(1,:),P2(1,:),P3(1,:),max_x,max_y)
hold on
scatter(xf,yf,300,'*');
    scatter(O(1,1),O(1,2),100,'o','r');
    text(O(1,1),O(1,2),'0');
    scatter(OT(1,1),OT(1,2),100,'o','k');
    text(OT(1,1),OT(1,2),'1');
for n = 1:length(t)
    hold on
    clf
    plot_arm(P1(n,:),P2(n,:),P3(n,:),max_x,max_y)
    hold on
    xf = T(2,n);
    yf = T(3,n);
    scatter(xf,yf,300,'*');
    scatter(O(1,1),O(1,2),200,'o','r');
    scatter(OT(1,1),OT(1,2),200,'o','k');
    text(OT(1,1),OT(1,2),'1','FontSize',7,'FontName','Times New Roman');
    pause(0.00001);
end
hold off

