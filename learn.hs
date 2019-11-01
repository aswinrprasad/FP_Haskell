
-- lemngth of a list 
length' [] = 0
length' (x:xs) = 1 + length' xs

-- Initials of a name
initials st1 st2 = [st1 !! 0] ++ [st2 !! 0]


-- Case ecpressions
desc xs = case xs of [] -> "The list is Empty"
                     [x] -> "A singleton"
                     xs -> "Longer list"

-- Fibonacci Series 
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fibLi n = [fib x | x <- [0..(n-1)]]