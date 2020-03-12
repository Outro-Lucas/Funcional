divide :: [Int] -> Int -> ([Int], [Int])
divide xs a = (take a xs, drop a xs)