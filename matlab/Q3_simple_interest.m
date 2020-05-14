principal = input("Enter the principal amount");
rate = input("Enter the annual interest rate");
time = input("Enter the time period (years)");

interest = double(principal*rate*time);
amount = double(principal) + interest;

fprintf("The interest = %.3f\n Total amount = %.3f",interest,amount)