arr = input("Enter the array");
number = input("Enter the number to search");

binaryResult = binarySearch(arr,number);
linearResult = linearSearch(arr,number);

if binaryResult == -1
    fprintf("Number not present in the array");
else 
    fprintf("The index of the %d is \n:-",number);
    fprintf("BinarySearch :- %d\n",binaryResult);
    fprintf("LinearSearch :- %d",linearResult);
end

function result = binarySearch(a, number)
    l = 0;
    h = length(a);
    result = -1;
    
    while l<=h
        k = round((l+h)/2);
        diff=a(k)-number;
        if(diff==0)
            result = k;
            break;
        elseif(diff>0)
            h = k-1;
        else
            l = k+1;
        end
    end
end

function result = linearSearch(a, number)
    result = -1;
    for n = 1:length(a)
        if a(n)==number
            result = n;
            break;
        end
    end
end


