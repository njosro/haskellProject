--2520 is the smallest number that can be divided by each of the numbers
--from 1 to 10 without any remainder.
--What is the smallest positive number that is evenly divisible by
--all of the numbers from 1 to 20?

divisors = [2,3,4,6,7,8,9,11,12,13,14,15,16,17,18,19]

grand_multiple_20 = take 1 [x | x<-[(2520),(2520+2520)..], x `divides` divisors] !! 0
grand_multiple n
    | n<3 = max 1 n
    | otherwise = (take 1 [x | x<-[start, 2*start..], x `divides` [2..n]]) !! 0
    where
        start = grand_multiple (n `div` 2)

divides n range = (take 1 [d | d<-range, n `mod` d /=0]) == []