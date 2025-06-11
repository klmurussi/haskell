-- Calculate the number of dominoes in a double-N set

main :: IO ()
main = do
    input <- getLine
    let n = read input :: Int
    let output = (n+1)*(n+2) `div` 2
    putStrLn (show output)