% �����22�������յ�Ϊ12�� 
clc,clear all 
%% ����Ȩ�ؾ��� 
w(1,2)=2;w(2,3)=1;w(2,4)=3;w(2,19)=5;w(3,5)=1;w(3,6)=1;w(4,21)=1;w(4,23)=4; w(5,7)=2;w(6,8)=2;w(6,10)=5;w(6,14)=1;w(8,17)=1;w(9,24)=2;w(9,25)=3; w(10,11)=2;w(10,12)=6;w(11,13)=2;w(11,15)=7;w(12,15)=2;w(13,16)=2; w(15,18)=2;w(15,26)=6;w(16,18)=3; w(17,25)=1;w(19,20)=2;w(20,22)=2;w(21,22)=2; w(22,23)=1;w(23,24)=1;w(25,26)=3; w=w';  
% MATLAB������Ҫ�������������Ǿ��� 
[i,j,k]=find(w); b=sparse(i,j,k,26,26);  
% ����ϡ����� 
%%  ��ͼ 
h = view(biograph(b,[],'ShowArrows','off','ShowWeights','on'));                       
% ShowArrows=off����ʾ����ͼ��on��ʾ����ͼ                       
% ShowWeights=off,��ʾ��Ȩͼ��on��ʾ��Ȩͼ             
%%  �����· 
k1=22;  % ��� 
k2=1;  % �յ� 
[dist,path,pred]=graphshortestpath(b,k1,k2,'directed',0)                     
% directed������ͼ������ͼ�ı�־��                   
% directed=0��ʾ����ͼ��directed=1��ʾ����ͼ                   
% dist=���·����                   
% path=���·��                   
% pred=����ǰ�ζ��� 
%%  �����·��Ⱦɫ�� 
set(h.Nodes(path),'Color',[1 0.4 0.4]) 
fowEdges = getedgesbynodeid(h,get(h.Nodes(path),'ID')); 
revEdges = getedgesbynodeid(h,get(h.Nodes(fliplr(path)),'ID')); 
edges = [fowEdges;revEdges]; 
set(edges,'LineColor',[1 0 0]);  % �����·��������ɫ 
set(edges,'LineWidth',1.5);      % �����·�����ÿ��   