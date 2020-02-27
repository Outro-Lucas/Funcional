interior (_:xs) = xs

neb x = if x /= '\n' then True else False 

main = do
    inputdata <- getContents
    let a = filter neb inputdata
    print $ interior a