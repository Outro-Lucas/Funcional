--Listas Infinitas

kalakoski :: [Int]
kalakoski = 1:2: drop 2 (concat . zipWith replicate kalakoski . cycle $ [1, 2])
------------------------------------------------------------------------------------

--merge implementado na prova
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x <= y    = x:merge xs (y:ys)
                    | otherwise = y:merge (x:xs) ys
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ merge a b

--chamar na main resolve o problema das repeticoes
unique :: (Eq a) => [a] -> [a]
unique [] = []
unique (xs:[]) =  [xs]
unique (x1:x2:xs)
          | x1 == x2  = unique (x2 : xs)
          | otherwise = x1 : unique (x2 : xs)

--nao consegui tirar o caso das repeticoes na lista
hamming :: [Int]
hamming = 1: (merge [2 * x| x <- hamming] 
             (merge [3 * x| x <- hamming] 
                    [5 * x| x <- hamming]))
------------------------------------------------------------------------------------
collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz n 
      | even n = n : collatz (n `div` 2) 
      | odd n = n : collatz (n * 3 + 1)
------------------------------------------------------------------------------------
