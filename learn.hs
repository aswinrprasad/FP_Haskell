
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

-- Find maximum of a list
maxLi [] = error "No max for empty list"
maxLi [x] = x
maxLi (x:xs) 
    | x > maxLi xs = x
    | otherwise =maxLi xs       

replicate' n xs = [xs | i <- [1..n]]

take' n xs = [(xs !! i) | i <- [0..(n-1)]]

--reverse with recursion and list comprehgension
reverse' xs = [(xs !! i) | i <- [(n-1),(n-2)..0]]
                where n= length xs

reverse1 [] =[]
reverse1 (x:xs) = reverse1 xs ++ [x] 

--Zip two lists
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y): zip' xs ys 

--quicksort with recurssion
quicksort [] = []
quicksort (x:xs) =
                let smallSorted = quicksort [a | a <- xs , a<=x]
                    bigSorted = quicksort [a | a <- xs , a>x]
                in smallSorted ++ [x] ++ bigSorted

-- char positions 
pos string key = [i | i <- [0..((length string)-1)] , (string !! i) == key]  