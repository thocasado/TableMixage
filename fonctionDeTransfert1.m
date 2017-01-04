function [H]=fct_fonctionDeTransfert1(g,M,k0)
H=zeros(1,k0+M);
H(1)=1;
H(k0+1:k0+M)=g/M;
%for i=k0+1:k0+M
 %   H(i)=g/M;
%end
end 




