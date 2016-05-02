
%function [transgrup]=nftrans(grup,mask)
%Transformaci� no positiva
%grup ---grup del vector
%mask ---m�scara
%Autor: Carlos Alonso
%E-mail: calonsomar@uoc.edu
%Data: 14/04/2016
% Transformaci� no positiva

function [transgrup]=nftrans(grup,mask)
c=size(mask,2);
transgrup = zeros(1,c);
for p=1:c
    if mask(p)==1
        % Si el LSB �s 0 restem 1
        % Si el LSB �s 1 sumem 1
        if mod(grup(p),2)==0
            transgrup(p)=grup(p)-1;
            
              
        else
            transgrup(p)=grup(p)+1;
            
        end
    else
        transgrup(p)=grup(p);
    end
end



