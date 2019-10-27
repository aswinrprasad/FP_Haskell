import Data.List

sign n 
    | (n >= 1) && (n<=9) = "+"
    | (n<= -1) && (n>= -9) = "-"
    | n==0 = "0"
    | otherwise = "error"


signs [] = ""
signs xs = concat [sign x | x <- xs , (x>= -9) && (x <=9)]


halfeven [] = []
halfeven (x:xs) = if (even x) 
                    then (x `div` 2):halfeven xs 
                    else (halfeven xs)

half1 []=[]
half1 (x:xs)
    | even x = (x `div` 2):(half1 xs)
    | otherwise = half1 xs

