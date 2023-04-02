function [res, error] = RectangleSimpsonQuadrature(f,a,b,c,d,N)
%funkcja oblicza całkę funckji f(x,y) na prostokącie D = [a,b] x [c,d]
%używając metody kwadratury Simpsona z podziałem na N podprzedziałów równej
%długości. W przypadku braku argumentu N jest on ustawiony automatycznie na
%N=100.

if nargin == 5
    N=100;
end

H1 = (b-a)/(2*N);
H2 = (d-c)/(2*N);

M1 = H1*H2/9* [1 repmat([4 2],1,N-1) 4 1]' * [1 repmat([4 2],1,N-1) 4 1];
v1 = repmat([0:2*N]*H1+a,2*N+1,1);

v2 = repmat([0:2*N]*H2+c,2*N+1,1)';
C=f(v1,v2);

res=M1(:)'*C(:);

matLabRes = integral2(f,a,b,c,d);

error = abs(res-matLabRes);

end