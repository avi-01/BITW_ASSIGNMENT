n = int(input("Enter the number of elements: "))

elementList = []

print("Enter the elements of the list: ")

for i in range(0,n):
    f = int(input())
    elementList.append(f)

val = int(input("Enter the value to search: "))

index = -1

for i in range(0,n):
    if elementList[i] == val:
        index = i
        break


if (index == -1):
    print("Element not found in the list")
else:
    print("The {} is found at index {}".format(val,index))