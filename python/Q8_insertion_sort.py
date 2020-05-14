def insertion_sort(a):
    n = len(a)
    for i in range(1,n):
        k = a[i]
        j = i-1
        while k<a[j] and j>=0:
            a[j], a[j+1] = a[j], a[j+1]
            j = j - 1
        
        a[j+1], a[i] = a[i], a[j+1]

    return a

n = int(input("Enter the number of elements: "))

elementList = []

print("Enter the elements of the list: ")

for i in range(0,n):
    f = int(input())
    elementList.append(f)


insertion_sort(elementList)

print("Sorted list: "+ str(elementList))
