%most characteristic and eigenvalue
b=[1 5 7 8 9;1/5 1 3 5 7;1/7 1/3 1 3 4;1/8 1/5 1/3 1 3;1/9 1/7 1/4 1/3 1];
[x,y]=eig(b)
eigenvalue=diag(y);%��Խ�������
disp('�������ֵΪ')
lamda=max(eigenvalue)%���������ֵ
for i=1:length(b)%���������ֵ��Ӧ������
    if lamda==eigenvalue(i)
        break;
    end
end
y_lamda=x(:,i);%������������ֵ��Ӧ����������
disp('��׼����������Ϊ')
y_lamda=y_lamda./sum(y_lamda)%���������������׼��
