sumlist [] [] = []
sumlist xs [] = xs
sumlist [] xs = xs
sumlist (x:xs) (y:ys) = (x+y) : sumlist xs ys