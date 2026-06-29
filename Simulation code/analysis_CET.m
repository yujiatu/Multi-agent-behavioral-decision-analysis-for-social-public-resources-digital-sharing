clc,clear;close all;
M=0.5;      B=3;     p=0.65;    L=70.34;    C1=48.55;%14.565;
E2=71.905;  T2=0.03;  C2=6.4715;
E3=62.31;   T3=0.036; C3=6.7295;
W=23.469;   lambda=0.6;

figure(3)
r = tiledlayout(2,3,'TileSpacing','tight');
xlabel(r,'Time','FontName', 'Times New Roman','FontSize',12)

%% EsEd
%Ts
nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.001,0.036,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.01,0.036,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.036,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y3(:,1),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.05,0.036,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.1,0.036,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'-m','linewidth',1.5);hold on;
%Td
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.001,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.012,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'--g','linewidth',1.5);hold on;
% [t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,71.905,62.31,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
% plot(t,y3(:,1),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.06,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.12,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'--m','linewidth',1.5);hold on;
xlabel({'(a)'}),ylabel('\itx'),%ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\it\theta_s=0.001, \theta_d=0.036', '\it\theta_s=0.01, \theta_d=0.036', '\it\theta_s=0.03, \theta_d=0.036', ...
    '\it\theta_s=0.05, \theta_d=0.036', '\it\theta_s=0.10, \theta_d=0.036', ...
    '\it\theta_s=0.03, \theta_d=0.001', '\it\theta_s=0.03, \theta_d=0.012', ...
    '\it\theta_s=0.03, \theta_d=0.06', '\it\theta_s=0.03, \theta_d=0.12', ...
    'Location','east','Orientation','vertical','NumColumns',1)

nexttile
%Ts
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.001,0.036,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.01,0.036,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.036,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,2),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.05,0.036,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.1,0.036,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'-m','linewidth',1.5);hold on;
%Td
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.001,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.012,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'--g','linewidth',1.5);hold on;
% [t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,71.905,62.31,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
% plot(t,y3(:,1),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.06,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.12,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'--m','linewidth',1.5);hold on;
xlabel({'(b)'}),ylabel('\ity'),%ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\it\theta_s=0.001, \theta_d=0.036', '\it\theta_s=0.01, \theta_d=0.036', '\it\theta_s=0.03, \theta_d=0.036', ...
    '\it\theta_s=0.05, \theta_d=0.036', '\it\theta_s=0.10, \theta_d=0.036', ...
    '\it\theta_s=0.03, \theta_d=0.001', '\it\theta_s=0.03, \theta_d=0.012', ...
    '\it\theta_s=0.03, \theta_d=0.06', '\it\theta_s=0.03, \theta_d=0.12', ...
    'Location','east','Orientation','vertical','NumColumns',1)

nexttile
%Ts
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.001,0.036,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.01,0.036,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.036,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,3),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.05,0.036,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.1,0.036,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'-m','linewidth',1.5);hold on;
%Td
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.001,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.012,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'--g','linewidth',1.5);hold on;
% [t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,71.905,62.31,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
% plot(t,y3(:,1),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.06,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,0.03,0.12,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'--m','linewidth',1.5);hold on;
xlabel({'(c)'}),ylabel('\itz'),%ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\it\theta_s=0.001, \theta_d=0.036', '\it\theta_s=0.01, \theta_d=0.036', '\it\theta_s=0.03, \theta_d=0.036', ...
    '\it\theta_s=0.05, \theta_d=0.036', '\it\theta_s=0.10, \theta_d=0.036', ...
    '\it\theta_s=0.03, \theta_d=0.001', '\it\theta_s=0.03, \theta_d=0.012', ...
    '\it\theta_s=0.03, \theta_d=0.06', '\it\theta_s=0.03, \theta_d=0.12', ...
    'Location','east','Orientation','vertical','NumColumns',1)

%% CsCd
%Cs
nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,1.942,6.73,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,3.236,6.73,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,4.53,6.73,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y3(:,1),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,6.73,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,8.412,6.73,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'-m','linewidth',1.5);hold on;
%Cd
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,2.019,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,3.365,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'--g','linewidth',1.5);hold on;
% [t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,71.905,62.31,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
% plot(t,y3(:,1),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,4.711,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,8.749,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'--m','linewidth',1.5);hold on;
xlabel({'(d)'}),ylabel('\itx'),ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itC_s=1.942, C_d=6.73', '\itC_s=3.236, C_d=6.73', '\itC_s=4.53, C_d=6.73', ...
    '\itC_s=6.472, C_d=6.73', '\itC_s=8.412, C_d=6.73', ...
    '\itC_s=6.472, C_d=2.019','\itC_s=6.472, C_d=3.365', '\itC_s=6.472, C_d=4.711', ...
    '\itC_s=6.472, C_d=8.749',  ...
    'Location','east','Orientation','vertical','NumColumns',1)

nexttile
%Cs
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,1.942,6.73,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,3.236,6.73,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,4.53,6.73,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y3(:,2),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,6.73,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,8.412,6.73,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'-m','linewidth',1.5);hold on;
%Cd
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,2.019,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,3.365,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'--g','linewidth',1.5);hold on;
% [t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,71.905,62.31,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
% plot(t,y3(:,1),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,4.711,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,8.749,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'--m','linewidth',1.5);hold on;
xlabel({'(e)'}),ylabel('\ity'),ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itC_s=1.942, C_d=6.73', '\itC_s=3.236, C_d=6.73', '\itC_s=4.53, C_d=6.73', ...
    '\itC_s=6.472, C_d=6.73', '\itC_s=8.412, C_d=6.73', ...
    '\itC_s=6.472, C_d=2.019','\itC_s=6.472, C_d=3.365', '\itC_s=6.472, C_d=4.711', ...
    '\itC_s=6.472, C_d=8.749',  ...
    'Location','east','Orientation','vertical','NumColumns',1)

nexttile
%Cs
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,1.942,6.73,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,3.236,6.73,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,4.53,6.73,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y3(:,3),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,6.73,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,8.412,6.73,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'-m','linewidth',1.5);hold on;
%Cd
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,2.019,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,3.365,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'--g','linewidth',1.5);hold on;
% [t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,71.905,62.31,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
% plot(t,y3(:,1),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,4.711,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,6.472,8.749,W,E2,E3,T2,T3,lambda),[0 5],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'--m','linewidth',1.5);hold on;
xlabel({'(f)'}),ylabel('\itz'),ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itC_s=1.942, C_d=6.73', '\itC_s=3.236, C_d=6.73', '\itC_s=4.53, C_d=6.73', ...
    '\itC_s=6.472, C_d=6.73', '\itC_s=8.412, C_d=6.73', ...
    '\itC_s=6.472, C_d=2.019','\itC_s=6.472, C_d=3.365', '\itC_s=6.472, C_d=4.711', ...
    '\itC_s=6.472, C_d=8.749',  ...
    'Location','east','Orientation','vertical','NumColumns',1)