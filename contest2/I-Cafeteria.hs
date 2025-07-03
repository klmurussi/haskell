estaDentroDaFaixa :: Int -> Int -> Int -> Bool
estaDentroDaFaixa min max valor = valor >= min && valor <= max

main :: IO ()
main = do
    [minLeite, maxLeite, capacidadeXicara, mlCafe] <- map read <$> sequence (replicate 4 getLine)

    -- Quantas doses de café são possíveis (k)
    let possiveisVolumesCafe = [k * mlCafe | k <- [1..], k * mlCafe < capacidadeXicara]

    -- Para cada volume de café, calcula o volume de leite necessário para encher a xícara
    let possiveisVolumesLeite = map (\volumeCafe -> capacidadeXicara - volumeCafe) possiveisVolumesCafe

    -- Verifica se algum volume de leite está dentro da faixa permitida de [minLeite, maxLeite]
    let consegueSatisfazer = any (estaDentroDaFaixa minLeite maxLeite) possiveisVolumesLeite

    putStrLn $ if consegueSatisfazer then "S" else "N"