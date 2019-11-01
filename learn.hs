
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

-- Higher Order Functions 
applyTwice f n = f $ f n

-- Flip function 
flip' f x y = f y x

-- map function
map' _ [] = []
map' f (x:xs) = f x : map' f xs

--Finding largest number under 10000 divisible by 3829
largdiv = head $ filter (\x -> x `mod` 3829 == 0) [10000,9999..]

-- Collatz Sequence
chain 1 = [1]
chain n 
    | even n = n: chain  (n `div` 2)
    | odd n = n: chain (n*3 + 1)

--foldl , foldr , scanl , scanr , foldl1 ,foldr1 ,scanl1 , scanr1

sum' xs = foldl (\acc x-> acc + x ) 0 xs 
--sumx = foldl (+) 0

map1 f xs = foldl (\acc x -> acc ++ [f x] ) [] xs 

reverse2 xs= foldr (\x acc -> acc++[x] ) [] xs