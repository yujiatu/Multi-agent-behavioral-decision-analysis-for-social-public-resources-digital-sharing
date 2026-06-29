clc,clear;
M=0.5;      B=3;     p=0.65;    L=70.34;    C1=48.55;%14.565;
E2=71.905;  T2=0.03;  C2=6.4715;
E3=62.31;   T3=0.036; C3=6.7295;
W=23.469;   lambda=0.6;

figure(4)
AP = tiledlayout(2,3,'TileSpacing','tight');
xlabel(AP,'Time','FontName', 'Times New Roman','FontSize',12)
%% W
nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,2.347,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,11.735,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,23.469,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y3(:,1),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,35.204,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,44.591,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'-m','linewidth',1.5);hold on;
xlabel({'(a)'}),ylabel('\itx'),%ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itW=2.347', '\itW=11.735', '\itW=23.469','\itW=35.204', '\itW=44.591', 'Location','east')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,2.347,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,11.735,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'--g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,23.469,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,2),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,35.204,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,44.591,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'--m','linewidth',1.5);hold on;
xlabel({'(b)'}),ylabel('\ity'),ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itW=2.347', '\itW=11.735', '\itW=23.469','\itW=35.204', '\itW=44.591', 'Location','east')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,2.347,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'-.r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,11.735,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'-.g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,23.469,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,3),'-.b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,35.204,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'-.k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,44.591,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'-.m','linewidth',1.5);hold on;
xlabel({'(c)'}),ylabel('\itz'),%ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itW=2.347', '\itW=11.735', '\itW=23.469','\itW=35.204', '\itW=44.591', 'Location','east')

%% lambda
nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.05),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.30),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.6),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y3(:,1),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.80),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.95),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'-m','linewidth',1.5);hold on;
xlabel({'(d)'}),ylabel('\itx'),%ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\it\lambda=0.05', '\it\lambda=0.30', '\it\lambda=0.6','\it\lambda=0.80', '\it\lambda=0.95', 'Location','east')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.05),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.30),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'--g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.6),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,2),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.80),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.95),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'--m','linewidth',1.5);hold on;
xlabel({'(e)'}),ylabel('\ity'),%ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\it\lambda=0.05', '\it\lambda=0.30', '\it\lambda=0.6','\it\lambda=0.80', '\it\lambda=0.95', 'Location','east')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.05),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'-.r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.30),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'-.g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.6),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,3),'-.b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.80),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'-.k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,0.95),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'-.m','linewidth',1.5);hold on;
xlabel({'(f)'}),ylabel('\itz'),%ylim([0 1])
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\it\lambda=0.05', '\it\lambda=0.30', '\it\lambda=0.6','\it\lambda=0.80', '\it\lambda=0.95', 'Location','east')