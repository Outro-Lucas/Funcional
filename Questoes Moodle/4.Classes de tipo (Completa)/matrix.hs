type Row = [Float]
data Matrix = Matrix { ncols :: Int
                    ,  nrows :: Int 
                    ,  rows :: [Row]
                    }

-- matriz de zeros
zeroMatrix :: Int -> Int -> Matrix
zeroMatrix c r = Matrix c r ( [ listzero | a<-[1..r] ] )
  where
    listzero = [ 0 | a<-[1..c] ]

-- matriz de uns
oneMatrix :: Int -> Int -> Matrix
oneMatrix c r = Matrix c r ( [ listone | a<-[1..r] ] )
  where
    listone = [ 1 | a<-[1..c] ]

-- matriz identidade : recebe ordem
identMatrix :: Int -> Matrix
identMatrix x = Matrix x x ( [ [ if a==b then 1 else 0 | b<-[1..x] ] | a<-[1..x] ] )

-- soma duas matrizes
sumMatrix :: Matrix -> Matrix -> Matrix
sumMatrix (Matrix c1 r1 xs) ( Matrix c2 r2 ys) = Matrix c1 r1 (sumCol xs ys)

sumCol (x:[]) (y:[]) = [sumRow x y]
sumCol (x:xs) (y:ys) = [sumRow x y] ++ sumCol xs ys

sumRow [] [] = []
sumRow (x:xs) (y:ys) = [x+y] ++ sumRow xs ys

-- produto de escalar por matriz
prodScalar :: Float -> Matrix -> Matrix
prodScalar n (Matrix c r xs) = Matrix c r ( [ [ i * n  | i <- l ] | l <-xs ] )

-- produto entre matrizes
prodMatrix :: Matrix -> Matrix -> Matrix
prodMatrix (Matrix c1 r1 xs) ( Matrix c2 r2 ys) = Matrix c1 r2 (prodMatrix' xs ys)

prodMatrix' m1 m2 = [ [ sum (zipWith (*) ri rj) | rj <- transpose m2] | ri <- m1 ]

transpose ([]:_) = []
transpose xs = (map head xs) : transpose (map tail xs)

-- transforma listas de listas de
-- floats numa matriz
listToMatrix :: [Row] -> Matrix
listToMatrix r = Matrix (length r) (length (r !! 0)) r

instance Show Matrix where
    show (Matrix col row xs) = concat [ "|" ++ concat ( [ " " ++ show y ++ " " | y<-x ] ) ++ "|\n" | x <- xs ]