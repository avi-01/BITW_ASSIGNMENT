import math

def isPrime(n):
    for i in range(2, int(math.sqrt(n)) + 1):
        if n%i == 0:
            return 0
    return 1

def prime(n):
    primeNum = []
    i = 2
    while n > 0:
        if(isPrime(i)):
            primeNum.append(i)
            n -= 1
        i += 1

    return primeNum   

n = int(input("Enter the size of prime number: "))

print("The first {} prime numbers are : {}".format(n,prime(n)))

