limit = input("Enter the length of fibonacci series to print");

arr = [0,1];

for i=3:limit
    arr(i) = arr(i-1) + arr(i-2);
end

disp("Fibonacci series :-")
for x=arr
    fprintf("%d ",x);
end