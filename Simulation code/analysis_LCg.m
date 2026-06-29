clc,clear;close all;
M=0.5;      B=3;     p=0.65;    L=70.34;    C1=48.55;%14.565;
E2=71.905;  T2=0.03;  C2=6.4715;
E3=62.31;   T3=0.036; C3=6.7295;
W=23.469;   lambda=0.6;

figure(5)
AP = tiledlayout(2,3,'TileSpacing','tight');
xlabel(AP,'Time','FontName', 'Times New Roman','FontSize',12)
%% L
nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,35.17,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,49.238,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,70.34,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y3(:,1),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,91.442,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,105.51,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'-m','linewidth',1.5);hold on;
xlabel({'(a)'}),ylabel('\itx'),ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itL=35.17', '\itL=49.238', '\itL=70.34','\itL=91.442', '\itL=105.51', 'Location','northeast')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,35.17,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,49.238,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'--g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,70.34,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,2),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,91.442,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,105.51,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'--m','linewidth',1.5);hold on;
xlabel({'(b)'}),ylabel('\ity')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itL=35.17', '\itL=49.238', '\itL=70.34','\itL=91.442', '\itL=105.51', 'Location','northeast')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,35.17,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'-.r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,49.238,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'-.g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,70.34,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,3),'-.b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,91.442,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'-.k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,105.51,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'-.m','linewidth',1.5);hold on;
xlabel({'(c)'}),ylabel('\itz')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itL=35.17', '\itL=49.238', '\itL=70.34','\itL=91.442', '\itL=105.51', 'Location','northeast')

%% C1 (Cg)
nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,24.275,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,48.55,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,72.825,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y3(:,1),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,91.7,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,145.65,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'-m','linewidth',1.5);hold on;
xlabel({'(d)'}),ylabel('\itx'),ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itC_g=24.275', '\itC_g=48.55', '\itC_g=72.825','\itC_g=91.7', '\itC_g=145.65', 'Location','northeast')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,24.275,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,48.55,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'--g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,72.825,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,2),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,91.7,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,145.65,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'--m','linewidth',1.5);hold on;
xlabel({'(e)'}),ylabel('\ity')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itC_g=24.275', '\itC_g=48.55', '\itC_g=72.825','\itC_g=91.7', '\itC_g=145.65', 'Location','northeast')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,24.275,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'-.r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,48.55,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'-.g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,72.825,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,3),'-.b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,91.7,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'-.k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,145.65,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'-.m','linewidth',1.5);hold on;
xlabel({'(f)'}),ylabel('\itz')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itC_g=24.275', '\itC_g=48.55', '\itC_g=72.825','\itC_g=91.7', '\itC_g=145.65', 'Location','northeast')
