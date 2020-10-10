rotEsq :: Int -> [Char] -> [Char]
rotEsq 0 x = x
rotEsq n (x:xs) = rotEsq (n-1) (xs++[x])