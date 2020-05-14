number = input("Enter a number to calculate the factorial");

answer = 1;
for i = 2:1:number
    answer = answer * i;
end

fprintf("The factorial of the number is %d", answer)