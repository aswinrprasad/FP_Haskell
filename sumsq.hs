sumsq [] = 0
sumsq [x] = x*x
sumsq (x:xs) = x*x + sumsq xs
    