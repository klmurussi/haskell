maxX :: Int
maxX = 432

maxY :: Int
maxY = 468

estaDentroDaQuadra :: Int -> Int -> Bool
estaDentroDaQuadra x y =
    x >= 0 && x <= maxX &&
    y >= 0 && y <= maxY

main :: IO ()
main = do
    coordenadas <- map read . words <$> getLine :: IO [Int]

    case coordenadas of
        [x, y] -> do
            if estaDentroDaQuadra x y
                then putStrLn "dentro"
                else putStrLn "fora"
        _      -> putStrLn "Entrada inválida. Por favor, digite duas coordenadas inteiras (X Y)."