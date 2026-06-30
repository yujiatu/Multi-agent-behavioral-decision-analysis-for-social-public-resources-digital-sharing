clc,clear;close all;

figure(1);
tiledlayout(2,3,'TileSpacing','tight');
M=0.5;      B=3;     p=0.65;    L=70.34;    C1=48.55;
E2=71.905;  T2=0.03;  C2=6.4715;
E3=62.31;   T3=0.036; C3=6.7295;
W=23.469;   lambda=0.6;

nexttile %000
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) func(t,y,M,B,p,10,C1,C2,C3,5,E2,E3,T2,T3,lambda),[0 2],[i j k]);               
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1.5);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
grid on
hold on
set(gca, 'FontName','Times New Roman','FontSize',12);
xlabel({('\itx');('                                 \rm(a) \itA(0,0,0)')},'Rotation',0);
ylabel(('\ity'),'Rotation',0);
zlabel('\itz','Rotation',360,'position',[0 0 1.05]);


nexttile %100
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) func(t,y,M,B,p,L,C1,12,15,W,E2,E3,T2,T3,lambda),[0 2],[i j k]);               
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1.5);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
grid on
hold on
set(gca, 'FontName','Times New Roman','FontSize',12);
xlabel({('\itx');('                                 \rm(b) \itD(1,0,0)')},'Rotation',0);
ylabel(('\ity'),'Rotation',0);
zlabel('\itz','Rotation',360,'position',[0 0 1.05]);


nexttile %011
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) func(t,y,M,20,p,L,C1,C2,C3,40,E2,E3,T2,T3,lambda),[0 2],[i j k]);               
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1.5);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
grid on
hold on
set(gca, 'FontName','Times New Roman','FontSize',12);
xlabel({('\itx');('                                 \rm(c) \itE(0,1,1)')},'Rotation',0);
ylabel(('\ity'),'Rotation',0);
zlabel('\itz','Rotation',360,'position',[0 0 1.05]);


nexttile %101
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) func(t,y,3,5,p,L,C1,C2,3,5,E2,40,T2,T3,lambda),[0 2],[i j k]);               
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1.5);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
grid on
hold on
set(gca, 'FontName','Times New Roman','FontSize',12);
xlabel({('\itx');('                                 \rm(d) \itF(1,0,1)')},'Rotation',0);
ylabel(('\ity'),'Rotation',0);
zlabel('\itz','Rotation',360,'position',[0 0 1.05]);

nexttile %110
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) func(t,y,3,5,p,L,C1,3,C3,5,40,E3,T2,T3,lambda),[0 2],[i j k]);               
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1.5);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
grid on
hold on
set(gca, 'FontName','Times New Roman','FontSize',12);
xlabel({('\itx');('                                 \rm(e) \itG(1,1,0)')},'Rotation',0);
ylabel(('\ity'),'Rotation',0);
zlabel('\itz','Rotation',360,'position',[0 0 1.05]);

nexttile %111
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) func(t,y,6,8,p,L,C1,C2,C3,50,E2,E3,T2,T3,lambda),[0 2],[i j k]);               
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1.5);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
grid on
hold on
set(gca, 'FontName','Times New Roman','FontSize',12);
xlabel({('\itx');('                                 \rm(f) \itH(1,1,1)')},'Rotation',0);
ylabel(('\ity'),'Rotation',0);
zlabel('\itz','Rotation',360,'position',[0 0 1.05]);

