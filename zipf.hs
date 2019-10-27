zipf [] _ =[]
zipf _ [] = []
zipf (a:as) (b:bs) = (a,b):zipf as bs