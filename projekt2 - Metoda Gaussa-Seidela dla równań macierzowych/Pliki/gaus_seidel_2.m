function [X,error,r] = gaus_seidel_2(A,B,max_iterations,tolerance,A0)
%Funkcja gaus_seidel wyznacza macierz X z równania XA=B używając metody
%Gaussa-Seidela z początkowym przybliżeniem A0 oraz maksymalną liczbą
%iteracji max_iterations. Dodatkowo gdy różnica pomiędzy iteracjami będzie
%mniejsza od tolerance, funkcja zwraca wynik
if nargin == 2
    tolerance = 1e-05;
    max_iterations = 100;
end

if nargin == 3
    tolerance = 1e-05;
end

X = zeros(size(B));
if nargin == 5
    X = A0;
end

X2 = X;

D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);

Bgs = -U*inv(L+D);
Cgs = B*inv(L+D);

k=1;

while k <= max_iterations
   X2=X;
   X = X*Bgs + Cgs;
   if norm(X-X2) < tolerance
       break
   end
   k = k+1;
end

GoodX = B*inv(A);
error = norm(GoodX-X);

r=max(abs(eig(Bgs)));
end