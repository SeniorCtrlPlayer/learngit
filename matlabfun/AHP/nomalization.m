function y=print(A)%A为矩阵，n为矩阵的行数
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
format rat
b=prod(rot90(A));
format short
disp('几何平均值为')
B=b'.^(1/length(A))%计算判断矩阵每行所有元素的几何平均值
disp('归一化结果')
y=B/sum(B);%归一化
end

