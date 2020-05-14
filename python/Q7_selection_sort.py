def selection_sort(a):
    n = len(a)
    for i in range(0,n):
        k = i
        for j in range(i,n):
            if a[j] < a[k]:
                k = j
        a[k], a[i] = a[i], a[k]

    return a

n = int(input("Enter the number of elements: "))

elementList = []

print("Enter the elements of the list: ")

for i in range(0,n):
    f = int(input())
    elementList.append(f)


selection_sort(elementList)

print("Sorted list: "+ str(elementList))
