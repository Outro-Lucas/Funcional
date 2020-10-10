kalakoski :: [Int]
kalakoski = 1:2: drop 2 (concat . zipWith replicate kalakoski . cycle $ [1, 2])

--Drop = aplicado a um número e uma lista, retorna a lista com o número especificado de elementos removidos da frente da lista. Se a lista tiver menos do que o número necessário de elementos, ela retornará [].
--Concat = aplicado a uma lista de listas, junta-as usando o operador ++.
--zipWith = aplicado a uma função binária e duas listas, retorna uma lista contendo elementos formados pela aplicação da função aos elementos correspondentes nas listas.
--Replicate = dado um número inteiro (positivo ou zero) e um valor, retorna uma lista contendo o número especificado de instâncias desse valor.
