-- readN :: [Int] -> Int -> Int -> (Int, Int)
offon [] a b = return (a, b)
offon (x:xs) a b = do
    let (newA, newB) = case x of
                      1 -> (1 - a, b)
                      2 -> (1 - a, 1 - b)
                      _ -> (a, b)  -- ignora valores inválidos
    offon xs newA newB

main :: IO ()
main = do
    n <- readLn :: IO Int
    l <- getLine
    let lista = map read (words l) :: [Int]
    (a, b) <- offon lista 0 0
    putStrLn (show a)
    putStrLn (show b)