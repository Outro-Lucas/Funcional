contrario:: [Int] -> [Int]
contrario [] = []
contrario (a:x) = contrario x ++ [a]

palindromo:: [Int] -> Bool
palindromo [] = True
palindromo x 
  | x == contrario x = True
  | otherwise = False

crivo :: [Int] -> [Int]
crivo [] = []
crivo (x:xs) = x : crivo [ n | n <- xs, mod n x /= 0]

primoP :: [Int]
primoP = crivo ([2..])