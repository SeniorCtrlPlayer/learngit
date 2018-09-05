%most characteristic and eigenvalue
b=[1 5 7 8 9;1/5 1 3 5 7;1/7 1/3 1 3 4;1/8 1/5 1/3 1 3;1/9 1/7 1/4 1/3 1];
[x,y]=eig(b)
eigenvalue=diag(y);%求对角线向量
disp('最大特征值为')
lamda=max(eigenvalue)%求最大特征值
for i=1:length(b)%求最大特征值对应的序数
    if lamda==eigenvalue(i)
        break;
    end
end
y_lamda=x(:,i);%求矩阵最大特征值对应的特征向量
disp('标准化特征向量为')
y_lamda=y_lamda./sum(y_lamda)%将最大特征向量标准化
