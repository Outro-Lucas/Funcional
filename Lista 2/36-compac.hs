seguidos :: [Int] -> Int
seguidos [] = 0
seguidos [x] = 1
seguidos (x:y:xs) = if x == y then 1 + seguidos ([y]++xs) else 1

notSeguidos :: [Int] -> [Int]
notSeguidos [] = []
notSeguidos [x] = [x]
notSeguidos (x:xs) = if x == head xs then notSeguidos xs else xs

compac :: [Int] -> [[Int]]
compac [] = []
compac [x] = [[x]]
compac x = [z]++compac (notSeguidos x)
       where z = if seguidos x > 1 then [seguidos (x), head x] else [head x]