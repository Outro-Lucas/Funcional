data Arv a = Vazia | No a ( Arv a ) ( Arv a ) deriving (Eq , Show)

insertArvore x Vazia = No x Vazia Vazia 
insertArvore x (No a esq dir)
  | x < a =  No a (insertArvore x esq) dir
  | x > a =  No a esq (insertArvore x dir)
  |otherwise = No a (insertArvore x esq) dir