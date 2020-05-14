inputYear = input("Enter the year");

if mod(inputYear,400) == 0
    fprintf("Leap Year");
elseif mod(inputYear,100) ~= 0 && mod(inputYear,4) == 0
    fprintf("Leap Year");
else
    fprintf("Not a leap year");
end