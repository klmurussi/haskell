calcular :: Int -> [Int] -> Int -> IO Int
calcular _ [] n = return n
calcular t (x:xs) n = do
    if x == t
        then calcular t xs (n + 1)
        else calcular t xs n

main :: IO ()
main = do
    n <- readLn :: IO Int
    l <- getLine
    let lista = map read (words l) :: [Int]
    p <- readLn :: IO Int
    m <- readLn :: IO Int

    np <- calcular 1 lista 0
    nm <- calcular 2 lista 0

    if p >= np && m >= nm
        then putStrLn "S"
        else putStrLn "N"
