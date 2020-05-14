def squareRootNewton(n,l):
    x = n
    while(abs(x*x-n)>=l):
        x = ((n/x)+x)/2
    return x

n = int(input("Enter the number: "))
l = float(input("Enter the tolerance value: "))

print("The square root :- {}".format(squareRootNewton(n,l)))
