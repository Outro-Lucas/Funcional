intercala::[Int]->[Int]->[Int]
intercala x [] = x
intercala [] x = x
intercala (x:xs) (y:ys) = x: y: intercala xs ys