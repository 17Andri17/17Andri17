function [res] = LargePolynomial(x,y)
%Funckja LargePolynomial(x,y) = x^{22} + y^{24} - x^{3}y^{15} obrazuje 
%wielomian stopnia większego od 4
res = x.^22 + y.^24 - x.^3.*y.^15;
end