num = input("Enter the number to check palindrome");
number = num;

arr = [];
i = 1;
while number ~= 0 
    arr(i) = mod(number,10);
    number = floor(number/10);
    i = i+1;
end

n = length(arr);
flag = 0;

for i=1:(n/2)
    if(arr(i) ~= arr(n-i+1)) 
        flag = 1;
        break;
    end
end

if flag==0
    fprintf("The number %d is a palindrome",num);
else
    fprintf("The number %d is not a palindrome",num);
end