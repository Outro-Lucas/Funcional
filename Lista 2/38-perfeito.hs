perfeito :: Int -> Bool
perfeito n = n `elem` [x * x | x <- [1..(n - 1)]]