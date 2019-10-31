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