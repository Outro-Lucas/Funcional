--converte um vetor de numeros para string
toStr :: [Int] -> [String]
toStr = (>>= return.show)

--converte para binario
toBin 0 = []
toBin n = toStr (reverse (helper n))
--realiza o calculo binario
helper 0 = []
helper n | n `mod` 2 == 1 = 1 : helper (n `div` 2)
         | n `mod` 2 == 0 = 0 : helper (n `div` 2)
