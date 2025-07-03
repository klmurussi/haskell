sum2 :: [Int] -> [Int] -> Int
sum2 a b = sum a + sum b

doubleSubtract :: [Int] -> [Int] -> Int
doubleSubtract a b = 2 * (sum a - sum b)

main :: IO ()
main = do
    input1 <- getLine
    let esquerdo = map read (words input1) :: [Int]

    input2 <- getLine
    let direito = map read (words input2) :: [Int]

    let resultado = if sum esquerdo > sum direito
                    then sum2 esquerdo direito
                    else doubleSubtract direito esquerdo

    putStrLn (show resultado)
