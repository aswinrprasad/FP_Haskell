pairs xs = foldr (\x acc  -> if x `mod` 2 == 0 then x:acc else acc) [] xs