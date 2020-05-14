a = randi(100);
b = randi(100);
c = randi(100);

largest = b;

if a>b
    largest = a;
end

if c>largest
    largest = c;
end

smallest = a;
if a>b
    smallest = b;
end

if c<smallest
    smallest = c;
end



fprintf('The largest number among %d %d and %d -> %d\n',a,b,c,largest);
fprintf('The smallest number among %d %d and %d -> %d',a,b,c,smallest);
