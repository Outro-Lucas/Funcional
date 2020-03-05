uniao [] [] =[]
uniao [] (x:xs) =(x:xs)
uniao (x:xs) [] =(x:xs)
uniao (x:xs)(y:ys)
                | x<y = x:uniao xs (y:ys)
                | x==y = x: uniao xs ys
                | otherwise = y: uniao (x:xs) ys