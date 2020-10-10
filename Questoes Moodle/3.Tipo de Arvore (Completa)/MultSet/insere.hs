data MultiSet a = MultiSet [(a,Int)] deriving (Show)

insere a (MultiSet xs) = MultiSet(insereAux a xs)

insereAux a [] = [(a,1)]
insereAux a ((b,c):xs)
    | a == b = ((b,c+1):xs)
	| a < b = (a,1):(b,c):xs
	| a > b = (b,c):(insereAux a xs)