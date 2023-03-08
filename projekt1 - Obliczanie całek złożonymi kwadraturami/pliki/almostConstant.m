function [s] = almostConstant(x,y)
%Funkcja ta dla argumentu x=0 przyjmuje wartość 100000, dla pozostałych
%argumentów przyjmuje wartość 0
s = zeros(size(x));

[rows,column]=size(x);
for i=1:rows
    for j=1:column
        if x(i,j)==0
            s(i,j)=100000;
        end
    end
end

end