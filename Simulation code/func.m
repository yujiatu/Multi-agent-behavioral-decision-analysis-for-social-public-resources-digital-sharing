function dydt=func(t,y,M,B,p,L,C1,C2,C3,W,E2,E3,T2,T3,lambda) 
dydt=zeros(3,1);
dydt(1)=y(1)*(y(1)-1)*(p*(B+M)*(y(2)+y(3))-2*p*M-L+C1);
dydt(2)=y(2)*(1-y(2))*(p*(B+M)*y(1)+lambda*W*y(3)-T2*E2-C2);
dydt(3)=y(3)*(1-y(3))*(p*(B+M)*y(1)+(1-lambda)*W*y(2)-T3*E3-C3);
end