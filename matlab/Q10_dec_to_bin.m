decNum = input("Enter the decimal number")
num = decNum;
binNum = 0;
k = 1;
while decNum ~= 0
    binNum = binNum + mod(decNum, 2)*k;
    decNum = floor(decNum / 2);
    k = k * 10;
end

fprintf("Binary of  %d decimal number :- %d",num,binNum);