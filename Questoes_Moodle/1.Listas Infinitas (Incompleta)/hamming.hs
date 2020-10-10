--merge implementado na prova
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x <= y    = x:merge xs (y:ys)
                    | otherwise = y:merge (x:xs) ys
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ merge a b


hamming :: [Int]
hamming = 1: (merge [2 * x| x <- hamming] 
             (merge [3 * x| x <- hamming] 
                    [5 * x| x <- hamming]))