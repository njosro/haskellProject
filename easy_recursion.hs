-- A user-defined 'length' function wihch uses pattern matching and recursion

--Type signature
my_length :: (Num y) => [x] -> y
--'base case'
my_length [] = 0
--recursive case
my_length (_:rest) = 1 + (my_length rest)


--A user-defined factorial function which uses recursion

--base case
factorial 0 = 1
--recursive case
factorial n = n * factorial (n-1)

--A naive fibonacci function

--Type Signature
fib :: Int -> Int
--base case and recursive case
fib n | n<1 = 0 | n==1 = 1 | otherwise = fib (n-1) + fib (n-2)