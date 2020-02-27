somaImpares = if (x:xs mod 2 == 0) then foldl (+) 0 xs else False
-- This part handles the Input/Output and can be used as it is. Do not change or modify it.
main = do
    inputdata <- getContents
    putStrLn "Olá"
    putStrLn $ show $ somaImpares $ map (read :: String -> Int) $ lines inputdata

