function y = maxspecial(a)
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%��������������ֵ  
b=prod(rot90(a)).^(1/length(a))'
d=a*b
e=length(a)*b;
f=d./e;
MAX=sum(f);
y=MAX
end

