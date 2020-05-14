num = input("Enter the number to check armstrong");
number = num;

arr = [];
i = 1;
while number ~= 0 
    arr(i) = mod(number,10);
    number = floor(number/10);
    i = i+1;
end

n = length(arr);
powSum = 0;

for i=1:n
    powSum = powSum + power(arr(i), n);
end

if powSum==num
    fprintf("The number %d is a armstrong number",num);
else
    fprintf("The number %d is not armstrong number",num);
end

function pow = power(x,n)
    pow = 1;
    while n ~= 0
        pow = pow * x;
        n = n - 1;
    end
end