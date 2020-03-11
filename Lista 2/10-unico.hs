frequencia :: Int -> [Int] -> Int
frequencia a [] = 0
frequencia a (x:xs)
                    | (a == x) = 1 + frequencia a xs
                    | otherwise = 0 + frequencia a xs

unico :: Int -> [Int] -> Bool
unico a [] = False
unico a (x:xs) = if (frequencia a (x:xs)) == 1 then True
                 else False