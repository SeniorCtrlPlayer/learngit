function y = three(a,m)%mΪ�����������
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n=a(:,2);%ȡ��Ҫ����������ϵ�һ��
k=combntns(n,3);%�Ե������ݣ�����Cn3�����
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
k=sortrows(k,6);%����ĳһ�У������ǵ����н�������
m=[m;k(1,:)];
for i=1:3
    for j=1:90
        if(k(1,i)==a(j,2))
            a(j,:)=[0 0];%������������һ����Ϊ0
        end
    end
end
y=a
end

