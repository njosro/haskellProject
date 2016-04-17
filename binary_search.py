#Binary search iterative approach

def bin_search(val,lst):
    lo=0
    hi = len(lst)-1
    while True:
        mid = (hi + lo) // 2
        if lst[mid]==val:
            return mid
        elif val<lst[mid]:
            hi = mid - 1
        elif val>lst[mid]:
            lo = mid + 1
        if hi<lo:
            return -1

thelist = [4,7,9,12,16,17,22,56,59,77,93]
print bin_search(16,thelist)