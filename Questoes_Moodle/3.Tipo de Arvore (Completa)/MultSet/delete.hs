data MultiSet a = MultiSet [(a,Int)] deriving (Show)

delete a b (MultiSet xs) = MultiSet(deleteAux a b xs)

deleteAux a b [] = []
deleteAux a b ((y,z):xs)
  | a == y && b < z = (y,b-z):xs
  | a == y && b >= z = xs
  | a > y = (y,z):(deleteAux a b xs)
  | otherwise = (y,z):xs