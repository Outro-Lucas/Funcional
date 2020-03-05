concate :: [Int] -> [Int] -> [Int]
concate [] [] = []
concate (x:xs) [] = (x:xs)
concate [] (x:xs) = (x:xs)
concate (x:xs)(a:as) = x:xs ++ a:as