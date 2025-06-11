readN :: Int -> IO [Int]
readN 0 = return []
readN n = do
    x <- readLn
    xs <- readN (n - 1)
    return (x : xs)

main :: IO ()
main = do
    x <- readLn :: IO Int
    n <- readLn :: IO Int
    lista <- readN n
    let resultado = (x*n) - (sum lista) + x
    putStrLn (show resultado)
