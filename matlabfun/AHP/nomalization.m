function y=print(A)%AΪ����nΪ���������
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
format rat
b=prod(rot90(A));
format short
disp('����ƽ��ֵΪ')
B=b'.^(1/length(A))%�����жϾ���ÿ������Ԫ�صļ���ƽ��ֵ
disp('��һ�����')
y=B/sum(B);%��һ��
end

