clear
X=[60 70 85 106 35;
    156 200 157 263 105;
    50 180 100 86 30];   %�û������ָ���������X
Y=[80 60 90 96 30;
    12 13 20 17 8;
    27 25 15 28 3;
    4 2 5 5 1];   %�û������ָ���������Y
n=size(X',1); m=size(X,1); s=size(Y,1);
A=[-X'  Y'];
b=zeros(n, 1);
LB=zeros(m+s,1); UB=[];
for i=1:n;
  f= [zeros(1,m) -Y(:,i)'];
  Aeq=[X(:,i)' zeros(1,s)]; beq=1;
  w(:,i)=linprog(f,A,b,Aeq,beq,LB,UB);    %�����Թ滮����DMU;�����Ȩ����w;
    E(i, i)=Y(:,i)'*w(m+1:m+s,i);    %���DMUi�����Ч��ֵEii
end
w    %������Ȩ����
E    %������Ч��ֵEii
Omega=w(1:m,:)    %���Ͷ��Ȩ������
mu=w(m+1:m+s,:)    %�������Ȩ������
%1.0000    0.8982    1.0000    0.8206    1.0000