
fact n = [i | i <- [1..(n-1)],n `mod` i ==0] 

prime n = fact n==[1,n-1]

genprime n = [i | i <- [1..n], prime i==True ]

perfectno n= sum (fact n)==n	

listlen []=0
listlen (_:xs)=1 + listlen xs

pyth (a,b,c) 
    | a^2+b^2 == c^2 = "YES,It is a pythogorian triple"
    | otherwise = "Not a pythogorian triple"

pyths n =[(a,b,c) | c<-[1..n],a<-[1..n],b<-[1..n], a^2 + b^2 == c^2]