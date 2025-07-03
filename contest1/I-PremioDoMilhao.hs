readN :: Int -> IO [Int]
readN 0 = return []
readN n = do
    x <- readLn :: IO Int
    xs <- readN (n - 1)
    return (x : xs)

sumMilhao :: [Int] -> Int -> Int -> IO Int

sumMilhao (x:xs) soma dia = do
    soma <- return (soma + x)
    if soma >= 1000000
        then return (dia + 1)
        else sumMilhao xs soma (dia + 1)

main :: IO()
main = do
    n <- readLn :: IO Int
    lista <- readN n
    result <- sumMilhao lista 0 0
    putStrLn (show result)