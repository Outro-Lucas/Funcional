unique :: (Eq a) => [a] -> [a]
unique [] = []
unique (xs:[]) =  [xs]
unique (x1:x2:xs)
          | x1 == x2  = unique (x2 : xs)
          | otherwise = x1 : unique (x2 : xs)