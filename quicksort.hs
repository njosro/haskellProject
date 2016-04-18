--quicksort
import Criterion.Main

quicksort :: [Int] -> [Int]
quicksort list
    | length list <= 1 = list
    | otherwise = (quicksort [x | x <- list, x<pivot])++(quicksort [x | x <- list, x==pivot])++(quicksort [x | x <- list, x>pivot])
        where pivot = list!!(length list `div` 2)
        
main = defaultMain [
    bgroup "quicksort" [ bench "10 items" $ whnf quicksort [9,4,7,28,8,6,5,1,3,0]
                        ,bench "1000 worst case" $ whnf quicksort [1000,999..1]
                        ]
    ]