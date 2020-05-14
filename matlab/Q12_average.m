arr = input("Enter the array");

avg = calAvg(arr);

fprintf("The average = %.2f",avg);

function avg = calAvg(arr)
    avg = 0;
    for i = arr
        avg = avg + i;
    end
    avg = avg / length(arr);
end