calculatePrice :: Int -> Int
calculatePrice age
    | age < 18 = 15
    | age < 60 = 30
    | otherwise = 20

main :: IO()
main = do
    age1 <- getLine
    let age1Int = read age1 :: Int
    age2 <- getLine
    let age2Int = read age2 :: Int

    let price1 = calculatePrice age1Int
    let price2 = calculatePrice age2Int
    let result = price1 + price2
    putStrLn (show result)