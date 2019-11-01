import qualified Data.Map as Map 

-- Association List 
phoneBook =[( "betty" ,"555 -2938" )
            ,( "bonnie" ,"452 -2928" )
            ,( "patsy" ,"493 -2928" )
            ,( "lucille" ,"205 -2928" )
            ,( "wendy" ,"939 -8282" )
            ,( "penny" ,"853 -2492" )
            ]

-- to find a value with key in phoneBook with recursion
findKey _ [] = "Not found"
findKey key (x:xs) = if fst x == key 
                        then snd x
                    else findKey key xs

-- with higher order functions : foldr 
findKey' key = foldr (\x acc -> if fst x == key then snd x else acc) "Not Found"

-- Create a map from an empty fromList
ins xs= foldr (\(k,v) acc -> Map.insert k v acc) Map.empty xs

-- Using fromListWith : Takes a List and a function as parameters, if there are duplicate keys , the (k,v) pair is supplied to the function and function decides how it behaves.
phoneBookToMap xs = Map.fromListWith (\number1 number2 -> number1 ++ " , " ++number2 ) xs

-- insertWith : Accepts a Map Association List and a function
insertToFromlist k v xs = Map.insertWith (\number1 number2 -> number1 ++ " , " ++number2 ) k v xs

