function [ y ] = f1_production( t )
global coe n;
y = 0;
for i = 1:n+1
    y = y - coe(1,i)*t^(n+1-i);            % between 'y' and 'coe' it must be '-', because ...
    % ...the f1_production is to solve the minimum
end
if y >= 0
    error('y must be < 0')
    % matlab �д����κκ���������������Ķ�����Χ�ڴ����ģ����û�и�����������Ĭ��ΪR��
    % ������Ȼû�����Ա���t�ķ�Χ�����ڵ�������fmincon�����ж����˵ģ��������Ա�����Χ�ǡ�XL��1����XR��1����
end
end