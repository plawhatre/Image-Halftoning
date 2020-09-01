function [C] = union_17510056(A,B)
X=[A;B];
a_b=intersection_17510056(A,B);
C=complement_17510056(a_b,X);
end

