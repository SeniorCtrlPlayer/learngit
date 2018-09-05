function y = maxspecial(a)
%UNTITLED5 此处显示有关此函数的摘要
%求解矩阵的最大特征值  
b=prod(rot90(a)).^(1/length(a))'
d=a*b
e=length(a)*b;
f=d./e;
MAX=sum(f);
y=MAX
end

