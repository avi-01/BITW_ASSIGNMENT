%%find(x) function returs the index of array where the value is non_zero.
%%It also returns the zero value indices if used with a negation symbol
%%(find(~x)).There are also other arguments in the find function by which
%%we can limit the output.

x = [2,3,0;1,0,3;0,0,3];
non_zeros_indices = find(x);
zeros_indices = find(~x);
fprintf("%g ",non_zeros_indices);
fprintf("\n");
fprintf("%g ",zeros_indices);
