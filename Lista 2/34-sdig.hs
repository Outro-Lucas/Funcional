sDig :: Int -> Int
sDig 0 = 0
sDig n = (mod n 10) + sDig(div n 10)