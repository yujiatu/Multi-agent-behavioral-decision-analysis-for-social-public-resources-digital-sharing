clc,clear;close all;

figure(1);
tiledlayout(2,2,'TileSpacing','tight');
M=0.5;      B=3;     p=0.65;    L=70.34;    C1=48.55;
E2=71.905;  T2=0.03;  C2=6.4715;
E3=62.31;   T3=0.036; C3=6.7295;
W=23.469;   lambda=0.6;

nexttile %x
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.2 0.2 0.2]); 
plot(t,y1(:,1),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.2 0.2 0.8]); 
plot(t,y2(:,1),'--g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.2 0.8 0.2]); 
plot(t,y3(:,1),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.2 0.8 0.8]); 
plot(t,y4(:,1),'--m','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.8 0.2 0.2]); 
plot(t,y5(:,1),'-r','linewidth',1.5);hold on;
[t,y6]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.8 0.2 0.8]); 
plot(t,y6(:,1),'-g','linewidth',1.5);hold on;
[t,y7]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.8 0.8 0.2]); 
plot(t,y7(:,1),'-b','linewidth',1.5);hold on;
[t,y8]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.8 0.8 0.8]); 
plot(t,y8(:,1),'-m','linewidth',1.5);hold on;
legend('\itx=0.2, y=0.2, z=0.2', '\itx=0.2, y=0.2, z=0.8', '\itx=0.2, y=0.8, z=0.2',...
    '\itx=0.2, y=0.8, z=0.8', '\itx=0.8, y=0.2, z=0.2', '\itx=0.8, y=0.2, z=0.8',...
    '\itx=0.8, y=0.8, z=0.2', '\itx=0.8, y=0.8, z=0.8', ...
    'Location','best')
xlabel({'Time';'(a)'}),ylabel('\itx')
set(gca, 'FontName', 'Times New Roman','FontSize',12)

nexttile %y
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.2 0.2 0.2]); 
plot(t,y1(:,2),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.2 0.2 0.8]); 
plot(t,y2(:,2),'--g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.8 0.2 0.2]); 
plot(t,y3(:,2),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.8 0.2 0.8]); 
plot(t,y4(:,2),'--m','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.2 0.8 0.2]); 
plot(t,y5(:,2),'-r','linewidth',1.5);hold on;
[t,y6]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.2 0.8 0.8]); 
plot(t,y6(:,2),'-g','linewidth',1.5);hold on;
[t,y7]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.8 0.8 0.2]); 
plot(t,y7(:,2),'-b','linewidth',1.5);hold on;
[t,y8]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.8 0.8 0.8]); 
plot(t,y8(:,2),'-m','linewidth',1.5);hold on;
legend('\itx=0.2, y=0.2, z=0.2', '\itx=0.2, y=0.2, z=0.8', '\itx=0.8, y=0.2, z=0.2',...
    '\itx=0.8, y=0.2, z=0.8', '\itx=0.2, y=0.8, z=0.2', '\itx=0.2, y=0.8, z=0.8',...
    '\itx=0.8, y=0.8, z=0.2', '\itx=0.8, y=0.8, z=0.8', ...
    'Location','best')
xlabel({'Time';'(b)'}),ylabel('\ity')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
nexttile %z
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.2 0.2 0.2]); 
plot(t,y1(:,3),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.2 0.8 0.2]); 
plot(t,y2(:,3),'--g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.8 0.2 0.2]); 
plot(t,y3(:,3),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.8 0.8 0.2]); 
plot(t,y4(:,3),'--m','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.2 0.2 0.8]); 
plot(t,y5(:,3),'-r','linewidth',1.5);hold on;
[t,y6]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.2 0.8 0.8]); 
plot(t,y6(:,3),'-g','linewidth',1.5);hold on;
[t,y7]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.8 0.2 0.8]); 
plot(t,y7(:,3),'-b','linewidth',1.5);hold on;
[t,y8]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.8 0.8 0.8]); 
plot(t,y8(:,3),'-m','linewidth',1.5);hold on;
legend('\itx=0.2, y=0.2, z=0.2', '\itx=0.2, y=0.8, z=0.2', '\itx=0.8, y=0.2, z=0.2',...
    '\itx=0.8, y=0.8, z=0.2', '\itx=0.2, y=0.2, z=0.8', '\itx=0.2, y=0.8, z=0.8',...
    '\itx=0.8, y=0.2, z=0.8', '\itx=0.8, y=0.8, z=0.8', ...
    'Location','best')
xlabel({'Time';'(c)'}),ylabel('\itz')
set(gca, 'FontName', 'Times New Roman','FontSize',12)

nexttile %xiangweitu
for i=0.1:0.2:0.9
    for j=0.1:0.2:0.9
        for k=0.1:0.2:0.9  
       [t,y]=ode45(@(t,y) func(t,y,M,B,L,p,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 1],[i j k]);               
        plot3(y(:,1), y(:,2), y(:,3), 'linewidth',1.5);hold on
        end
    end
end
grid on
set(gca, 'FontName','Times New Roman','FontSize',12);
xlabel({'\itx'}); ylabel({('\ity');('                                \rm(d)')}); zlabel('\itz');
% set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
xlim([0 1]),ylim([0 1]), zlim([0 1])
