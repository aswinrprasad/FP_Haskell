import Data.List

concatMap' f [] = []
concatMap' f (x:xs) = f x ++ concatMap' f xs


-- k and k1 are the same
k = scanl (\acc x -> acc*2) 1 [1..9]
k1 = take 10 $ iterate (*2) 1


test l@(x:xs) = [1,2,3,4]

-- Takes a list of values and returns a tuple of the element and its count
elecount li = map (\ l@ ( x : xs ) -> (x , length l )) . group . sort $ li

-- applying inits and tails on a string to get a list of tuples with both results
initntail st = zip (inits st) (tails st)

search needle haystack =let nlen = length needle
                        in foldl' (\ acc x -> if take nlen x == needle then True else acc ) False ( tails haystack )


-- Head is dangerous. If stock doesn't have an element where the condition won't satisfy , dropWhile returns an empty list. 'head' on an empty list is an error. So we use 'find' instead.
stock =[(994.4 ,2008 ,9 ,1) ,(995.2 ,2008 ,9 ,2) ,(999.2 ,2008 ,9 ,3) ,(1001.4 ,2008 ,9 ,4) ,(998.3 ,2008 ,9 ,5)]
s = head ( dropWhile (\( val ,y ,m , d ) -> val < 1000) stock ) 

s1 = find (\(val,y,m,d) -> val > 1000) stock

