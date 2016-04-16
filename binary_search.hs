--Arrays are more appropriate here, because indexing an array is O(1)
--Updating an array is O(n), but this is search, so no updates.

import Data.Array;

main = do
    let mylist = array (0,10) [(i,i) | i <- [4,7,9,12,16,17,22,56,59,77,93]]
    print (bin_search 16 mylist 0 10)
    
bin_search val lst lo hi 
    | hi<lo = -1 
    | pivot>val = bin_search val lst lo (mid-1) 
    | pivot>val = bin_search val lst (mid+1) hi 
    | pivot==val = mid 
    where 
        mid = (lo + hi) `div` 2 
        pivot = lst!mid