n = int(input("Enter the number of elements: "))

elementList = []

print("Enter the elements of the list: ")

for i in range(0,n):
    f = int(input())
    elementList.append(f)

val = int(input("Enter the value to search: "))

l = 0
h = n - 1
index = -1

while l<=h:
    mid = int((l+h)/2)

    if (elementList[mid] == val):
        index = mid
        break
    elif elementList[mid] > val:
        h = mid - 1
    else:
        l = mid + 1


if (index == -1):
    print("Element not found in the list")
else:
    print("The {} is found at index {}".format(val,index))