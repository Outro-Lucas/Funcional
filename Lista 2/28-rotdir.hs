rotDir :: Int -> [Char] -> [Char]
rotDir 0 x = x
rotDir n x = rotDir (n-1) ([last x] ++ init x)