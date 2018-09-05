function y = three(a,m)%m为结果保留矩阵
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
n=a(:,2);%取出要进行排列组合的一列
k=combntns(n,3);%对单行数据，进行Cn3的组合
for i=1:length(k)
    sum1=a(k(i,1))+a(k(i,2))+a(k(i,3));
    sum2=sum(a(:,1));
    sum2=sum2-sum1;
    avg1=sum1/3;
    avg2=sum2/87;
    k(i,4)=avg1;
    k(i,5)=avg2;
    k(i,6)=abs(avg1-avg2);
end
k=sortrows(k,6);%根据某一行，其中是第六行进行排序
m=[m;k(1,:)];
for i=1:3
    for j=1:90
        if(k(1,i)==a(j,2))
            a(j,:)=[0 0];%将满足条件的一行置为0
        end
    end
end
y=a
end

