main :: IO ()
main = do
    input <- getLine
    let numeros = map read (words input) :: [Int]
    let resultado = sum numeros - 3
    putStrLn (show resultado)
