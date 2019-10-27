rev [] = []

rev (x:xs) 
    | xs:[]==[xs] = (x:xs)
    | otherwise = rev xs