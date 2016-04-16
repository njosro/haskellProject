--quicksort

quicksort :: [Int] -> [Int]
quicksort list
    | length list <= 1 = list
    | otherwise = (quicksort [x | x <- list, x<pivot])++(quicksort [x | x <- list, x==pivot])++(quicksort [x | x <- list, x>pivot])
        where pivot = list!!(length list `div` 2)