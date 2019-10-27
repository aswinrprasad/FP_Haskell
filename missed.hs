sum' [] = 0
sum' (x:xs) = x + sum' xs

capital " " = " Empty string , whoops ! "
capital var@( x : xs ) = " The first letter of " ++ var ++ " is " ++ [ x ]

initials firstname lastname = [ f ] ++ " . " ++ [ l ] ++ " . "
    where   (f:_) = firstname
            (l:_) = lastname


calcBmis xs = [ bmi w h | (w , h ) <- xs ]
    where bmi weight height = weight / height ^ 2


replicate' n x 
    | n <= 0 = []
    | otherwise = x: replicate (n-1) x


take' _ []=[]
take' n (x:xs)
    | n<=0 = []
    | otherwise = x: take' (n-1) xs


reverse' []=[]
reverse' (x:xs) =  reverse' xs ++ [x] 

quicksort [] = []
quicksort (x:xs) = let  smallerSort = quicksort [a | a <- xs , a <= x]
                        biggerSort = quicksort [a | a <- xs , a > x]
                   in   smallerSort ++ [x] ++ biggerSort

zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x:xs) (y:ys) =f x y : zipWith' f xs ys



flip' f y x = f x y

largestDivisible = head ( filter p [100000 ,99999..])
    where p x = x `mod` 3892 == 0


chain 1= [1]
chain n 
    | even n = n : chain (n `div` 2)
    | odd n = n : chain ((n `div` 3) + 1)
    
numLongChains = length ( filter isLong ( map chain [1..100]))
    where isLong xs = length xs > 15


day 1 ="Monday"
day 2 ="Tuesday"
day 3 ="Wedneday"
day 4 ="Thursday"
day 5 ="Friday"
day 6 ="Saturday"
day 7 ="Sunday"

g [] = []
g (x:xs) =  if (x < (xs !! 0)) 
            then ((-1*(x- (xs !! 0))):g xs) 
            else g xs