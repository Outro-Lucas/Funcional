data MConj a = Vazia | No a Int (MConj a) (MConj a) deriving (Show, Eq)

remove :: Ord a => a -> Int -> MConj a -> MConj a
remove x q Vazia = Vazia
remove x q (No y n esq dir)
  | x < y =  No y n (remove x q esq) dir
  | x > y =  No y n esq (remove x q dir)
  | x == y && q < n   = No y (n-q) esq dir
  | esq == Vazia = dir
  | dir == Vazia = esq