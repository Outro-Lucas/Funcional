--incrementa x = x + 1

--cont = 0
--iguais3 x y z = if x == y then incrementa cont
--else if x == z then incrementa cont
--else if y == z then incrementa cont
--else cont

iguais3 x y z = if x == y && x == z && y == z then 3
else if  x /= y && x /= z && y /= z then 0
else 2

main = do
    line1 <- getLine 
    line2 <- getLine
    line3 <- getLine
    let x = read line1 :: Int
    let	y = read line2 :: Int
    let	z = read line3 :: Int
    print $ iguais3 x y z