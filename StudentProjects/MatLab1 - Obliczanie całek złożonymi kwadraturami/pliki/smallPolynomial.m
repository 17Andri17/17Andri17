function [res] = smallPolynomial(x,y)
%Funckja smallPolynomial(x,y) = 3+x^{2}+2xy-3x^{2}y^{3} obrazuję wielomian
%stopnia nie większego od 4
res = 3+x.^2+2.*x.*y-3.*x.^2.*y.^3;
end