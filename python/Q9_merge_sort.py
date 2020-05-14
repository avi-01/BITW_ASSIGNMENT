def merge(a,l,h):
    mid = int((l+h-1)/2)
    print(l,h,mid)
    i = l
    j = mid+1
    temp = []

    while i<=mid or j<=h:
        print(i,j)
        if j>h:
            temp.append(a[i])
            i += 1
        elif i>mid:
            temp.append(a[j])
            j += 1
        elif a[i]>a[j]:
            temp.append(a[j])
            j += 1
        else:
            temp.append(a[i])
            i += 1
    
    i = l
    for k in temp:
        a[i] = k
        i += 1
    
    return


def merge_sort(a, l, h):
    if l==h:
        return
    mid = int((l+h-1)/2)
    merge_sort(a,l,mid)
    merge_sort(a,mid+1,h)
    
    merge(a,l,h)



n = int(input("Enter the number of elements: "))

elementList = []

print("Enter the elements of the list: ")

for i in range(0,n):
    f = int(input())
    elementList.append(f)

merge_sort(elementList,0,n-1)

print("Sorted list: "+ str(elementList))
