def quicksort(array):
    if len(array) <= 1:
        return array
    pivot = array[len(array)//2]
    LT,GT,EQ = [],[],[]
    for item in array:
        if item < pivot:
            LT.append(item)
        if item > pivot:
            GT.append(item)
        if item == pivot:
            EQ.append(item)
    return quicksort(LT)+EQ+quicksort(GT)

lst = [int(i) for i in raw_input("List: ").split(" ")]
print quicksort(lst)