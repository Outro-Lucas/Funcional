sequencia :: Int -> Int -> [Int]
sequencia a b = [b + x | x <- [0..a - 1]]