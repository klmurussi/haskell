estaDentroDaFaixa :: Int -> Int -> Int -> Bool
estaDentroDaFaixa min max valor = valor >= min && valor <= max

main :: IO ()
main = do
    [minLeite, maxLeite, capacidadeXicara, mlCafe] <- map read <$> sequence (replicate 4 getLine)

    let volumeDeLeite = capacidadeXicara - mlCafe

    putStrLn $ if estaDentroDaFaixa minLeite maxLeite volumeDeLeite then "S" else "N"