frequencia :: [Int] -> Int -> Int
frequencia [] a = 0
frequencia (x:xs) a 
                    | (a == x) = 1 + frequencia xs a
                    | otherwise = 0 + frequencia xs a