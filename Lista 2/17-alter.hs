intercala::[Int]->[Int]->[Int]
intercala x [] = x
intercala [] x = x
intercala (x:xs) (y:ys) = x: y: intercala xs ys

neg :: Int -> Int
neg x = x * (-1) 

reverso :: [a] -> [a]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]

alter :: Int -> [Int]
alter 0 = [0]
alter 1 = [1, -1]
alter x = intercala [1..x] (reverso[neg(x) .. -1])