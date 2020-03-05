pertence :: Int -> [Int] -> Bool
pertence _ [] = False
pertence n (x:xs) | (n == x) = True
                  | otherwise = pertence n xs