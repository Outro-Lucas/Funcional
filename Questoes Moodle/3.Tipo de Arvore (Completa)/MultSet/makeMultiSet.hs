data MultiSet a = MultiSet [(a,Int)] deriving (Show)

makeMultiSet xs = MultiSet (makeMultiSet' ( insertSort xs ))

makeMultiSet' [] = []
makeMultiSet' (x:xs)= ( x, ( frequencia x (x:xs) ) ) : makeMultiSet' (filter (/=x) xs) 

insertSort [] = []
insertSort (x:xs) = insertSort [ y | y<-xs, y<=x ] ++ [x] ++ insertSort [ y | y<-xs, y>x ]

frequencia _ [] = 0
frequencia y (x:xs) = if y == x then 1 + (frequencia y xs) else frequencia y xs