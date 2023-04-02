
errors = [];
for N=100:20:1001
    [r,e]=RectangleSimpsonQuadrature(@smallPolynomial,2,3,1,4,N);
    errors = [errors e];
end
x = 100:20:1001;
subplot(3,2,1)
plot(x, errors, '-');
title('SmallPolynomial');
xlabel('Liczba węzłów N');
ylabel('Błąd');


errors = [];
for N=100:40:1001
    [r,e]=RectangleSimpsonQuadrature(@LargePolynomial,2,3,1,4,N);
    errors = [errors e];
end
x = 100:40:1001;
subplot(3,2,2)
plot(x, errors, '-');
title('LargePolynomial');
xlabel('Liczba węzłów N');
ylabel('Błąd');

errors = [];
for N=100:20:1001
    [r,e]=RectangleSimpsonQuadrature(@NonIntegral,2,3,1,4,N);
    errors = [errors e];
end
x = 100:20:1001;
subplot(3,2,3)
plot(x, errors, '-');
title('NonIntegral');
xlabel('Liczba węzłów N');
ylabel('Błąd');

errors = [];
for N=100:20:1001
    [r,e]=RectangleSimpsonQuadrature(@max,0,80,-43,40,N);
    errors = [errors e];
end
x = 100:20:1001;
subplot(3,2,4)
plot(x, errors, '-');
title('Max');
xlabel('Liczba węzłów N');
ylabel('Błąd');

errors = [];
for N=100:20:1001
    [r,e]=RectangleSimpsonQuadrature(@almostConstant,-1,10,3,4,N);
    errors = [errors e];
end
x = 100:20:1001;
subplot(3,2,5)
plot(x, errors, '-');
title('AlmostConstant');
xlabel('Liczba węzłów N');
ylabel('Błąd');

errors = [];
for N=52:1:151
    [r,e]=RectangleSimpsonQuadrature(@absolutexy,-1,10,3,4,N);
    errors = [errors e];
end
x = 52:1:151;
subplot(3,2,6)
plot(x, errors, '-');
title('Absolutexy');
xlabel('Liczba węzłów N');
ylabel('Błąd');

sgtitle('Wykresy błędów przykładowych funkcji od liczby węzłów')