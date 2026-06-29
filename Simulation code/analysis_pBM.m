clc,clear;
M=0.5;      B=3;     p=0.65;    L=70.34;    C1=48.55;%14.565;
E2=71.905;  T2=0.03;  C2=6.4715;
E3=62.31;   T3=0.036; C3=6.7295;
W=23.469;   lambda=0.6;

figure(2)
AP = tiledlayout(3,3,'TileSpacing','tight');
xlabel(AP,'Time','FontName', 'Times New Roman','FontSize',12)
%% p
nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,0.05,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,0.30,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,0.65,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y3(:,1),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,0.80,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,1.00,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'-m','linewidth',1.5);hold on;
xlabel({'(a)'}),ylabel('\itx');
% legend('\itp=0.05', '\itp=0.30', '\itp=0.65','\itp=0.80', '\itp=1.00', 'Location','northoutside','Orientation','horizontal')
set(gca, 'FontName', 'Times New Roman','FontSize',12);
legend('\itp=0.05', '\itp=0.30', '\itp=0.65','\itp=0.80', '\itp=1.00', 'Location','best')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,0.05,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,0.30,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'--g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,0.65,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,2),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,0.80,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,1.00,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'--m','linewidth',1.5);hold on;
xlabel({'(b)'}),ylabel('\ity');
set(gca, 'FontName', 'Times New Roman','FontSize',12);
legend('\itp=0.05', '\itp=0.30', '\itp=0.65','\itp=0.80', '\itp=1.00', 'Location','best')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,B,0.05,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'-.r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,B,0.30,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'-.g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,B,0.65,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,3),'-.b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,B,0.80,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'-.k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,B,1.00,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'-.m','linewidth',1.5);hold on;
xlabel({'(c)'}),ylabel('\itz')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itp=0.05', '\itp=0.30', '\itp=0.65','\itp=0.80', '\itp=1.00', 'Location','best')

%% B
nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,1,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,3,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,5,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y3(:,1),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,7,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,9,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'-m','linewidth',1.5);hold on;
xlabel({'(d)'}),ylabel('\itx')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itB=1', '\itB=3', '\itB=5','\itB=7', '\itB=9', 'Location','best')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,1,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,3,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'--g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,5,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,2),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,7,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,9,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'--m','linewidth',1.5);hold on;
xlabel({'(e)'}),ylabel('\ity')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itB=1', '\itB=3', '\itB=5','\itB=7', '\itB=9', 'Location','best')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,M,1,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'-.r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,M,3,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'-.g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,M,5,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,3),'-.b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,M,7,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'-.k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,M,9,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'-.m','linewidth',1.5);hold on;
xlabel({'(f)'}),ylabel('\itz')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itB=1', '\itB=3', '\itB=5','\itB=7', '\itB=9', 'Location','best')

%% M
nexttile
[t,y1]=ode45(@(t,y) func(t,y,0.05,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y1(:,1),'-r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,0.50,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y2(:,1),'-g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,1.50,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y3(:,1),'-b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,3.00,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y4(:,1),'-k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,5.00,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 0.5],[0.4 0.35 0.45]); 
plot(t,y5(:,1),'-m','linewidth',1.5);hold on;
xlabel({'(g)'}),ylabel('\itx')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itM=0.05', '\itM=0.50', '\itM=1.50','\itM=3.00', '\itM=5.00', 'Location','best')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,0.05,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,2),'--r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,0.50,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,2),'--g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,1.50,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,2),'--b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,3.00,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,2),'--k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,5.00,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,2),'--m','linewidth',1.5);hold on;
xlabel({'(h)'}),ylabel('\ity')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itM=0.05', '\itM=0.50', '\itM=1.50','\itM=3.00', '\itM=5.00', 'Location','best')

nexttile
[t,y1]=ode45(@(t,y) func(t,y,0.05,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y1(:,3),'-.r','linewidth',1.5);hold on;
[t,y2]=ode45(@(t,y) func(t,y,0.50,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y2(:,3),'-.g','linewidth',1.5);hold on;
[t,y3]=ode45(@(t,y) func(t,y,1.50,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y3(:,3),'-.b','linewidth',1.5);hold on;
[t,y4]=ode45(@(t,y) func(t,y,3.00,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y4(:,3),'-.k','linewidth',1.5);hold on;
[t,y5]=ode45(@(t,y) func(t,y,5.00,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda),[0 2],[0.4 0.35 0.45]); 
plot(t,y5(:,3),'-.m','linewidth',1.5);hold on;
xlabel({'(i)'}),ylabel('\itz')
set(gca, 'FontName', 'Times New Roman','FontSize',12)
legend('\itM=0.05', '\itM=0.50', '\itM=1.50','\itM=3.00', '\itM=5.00', 'Location','best')