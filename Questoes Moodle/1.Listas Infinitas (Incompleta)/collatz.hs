{-coll :: Integer -> Integer
coll n
    |(mod n 2) == 0 (div n 2)
    |otherwise = 3 * n + 1

collatz :: Integer -> [Integer]
collatz n
      |(n == 1) = [n]
      |otherwise = n:collatz (coll n)-}

collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz n 
      | even n = n : collatz (n `div` 2) 
      | odd n = n : collatz (n * 3 + 1)

-- even = aplicado a um argumento integral, retorna True se o argumento for par e False caso contrário.
-- odd = aplicado a um argumento integral, retorna True se o argumento for ímpar e False caso contrário.