--Arrays are more appropriate here, because indexing an array is O(1)
--Updating an array is O(n), but this is search, so no updates.

import Data.Array;

main = do
    let mylist = array (0,10) [(i,i) | i <- [4,7,9,12,16,17,22,56,59,77,93]]
    print (bin_search 12 mylist 1 11)
    
bin_search val L lo hi
| hi<lo = -1
| pivot>val = bin_search val L lo (mid-1)
| pivot>val = bin_search val L (mid+1) hi
| pivot==val = mid
where
mid = lo + (hi-lo) `div` 2
pivot = L!mid