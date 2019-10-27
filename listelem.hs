element _ [] = False
element n (x:xs) 
    | n==x = True
    | otherwise = element n xs 