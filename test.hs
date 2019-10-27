week 0 = "Sunday"
week 1 = "Monday"
week 2 = "Tuesday"
week 3 = "Wednesday" 
week 4 = "Thursday"
week 5 = "Friday"
week 6 = "Saturday"

quicksort [] = []
quicksort ( x : xs ) = 
    let smallerSorted = quicksort ( filter ( <= x ) xs ) 
        biggerSorted = quicksort ( filter ( > x ) xs )
    in smallerSorted ++ [ x ] ++ biggerSorted



chain 1 = [1]
chain n
    |even n = n : chain ( n ` div` 2)
    |odd n = n : chain ( n *3 + 1)

numLongChains = length ( filter isLong ( map chain [1..100]))
    where isLong xs = length xs > 15

numLongChains1 = length ( filter (\xs -> length xs >15) ( map chain [1..100]))