%--------------------
%1
A=[2 1; 1 2]
B=[8;1]

gaus_seidel(A,B)

%---------------------
%2

A=[1 1 1; 1 2 2; 1 3 1]
B=[7; 13; 13]

gaus_seidel(A,B)

A=[1 1 1; 1 3 1; 1 2 2]
B=[7; 13; 13]

gaus_seidel(A,B)

%--------------------
%3

A=(rand(4)+3*eye(4))*100
B=rand(4,3)*100
B=rand(5,4)*100

gaus_seidel_2(A,B)

%----------------
%4

A=[1 20 32;
    10 3 18;
    10 20 6]
B=zeros(3)

gaus_seidel(A,B)

%----------------
%5

A=rand(3)
B=eye(3)

gaus_seidel(A,B)
gaus_seidel_2(A,B)

gaus_seidel(A,B,3)
gaus_seidel_2(A,B,3)

%----------------
%6

A=[4 1 2; 3 5 1; 1 1 3]
B=[4; 7; 3]


[x1,e1]=gaus_seidel(A,B,2)
[x2,e2]=gaus_seidel(A,B,3)
[x3,e3]=gaus_seidel(A,B)


%-----------------
%7

errors=[];
radius=[];

for N=1:10000
    A=rand(4);
    B=rand(4);
    [x,e,r]=gaus_seidel(A,B,10);
    errors = [errors e];
    radius = [radius r];
end

plot(radius,errors, '.')
ylim([0 10000])
xlim([0 2.6])
title('Błąd od promienia spektralnego po 10 iteracjach');
xlabel('Pomień spektralny');
ylabel('Błąd');