import Data.List (foldl')

processarAlunoVisibilidade :: (Int, Int) -> Int -> (Int, Int)
processarAlunoVisibilidade (contadorInvisiveis, alturaMaximaVisivel) alturaAlunoAtual
    | alturaAlunoAtual > alturaMaximaVisivel =
        (contadorInvisiveis, alturaAlunoAtual)

    | otherwise =
        (contadorInvisiveis + 1, alturaMaximaVisivel)

main :: IO ()
main = do
    _ <- getLine -- Não precisamos do valor de N.

    inputAlturasStr <- getLine

    -- Lista reversa das alturas, pois o professor vê nesta ordem.
    let alturasDosAlunos = reverse (map read (words inputAlturasStr)) :: [Int]

    let (totalInvisiveis, _) = foldl' processarAlunoVisibilidade (0, 0) alturasDosAlunos

    print totalInvisiveis