import Polinomio

makePol [] = polZero
makePol (x:xs)
    | x == 0 = makePol xs
    | otherwise = consPol x ( length xs ) ( makePol xs )

derivada p
    | m == 0 = polZero
	| otherwise = consPol ( m * b ) ( m - 1 ) ( derivada q )
	where
    m = grau p
    b = coefLider p
    q = restoPol p