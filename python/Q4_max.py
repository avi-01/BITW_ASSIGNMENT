n = int(input("Enter the number of elements: "))

elementList = []

print("Enter the elements of the list: ")

for i in range(0,n):
    f = int(input())
    elementList.append(f)

m = 0
flag = 0

for i in elementList:
    if flag == 0:
        m = i
    elif i > m:
        m = i

print("The max element in the list is {}".format(m))


