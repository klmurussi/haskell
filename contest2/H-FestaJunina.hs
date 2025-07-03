main :: IO ()
main = do
    [posEscola, posSupermercado, posLojinha] <- map read <$> sequence (replicate 3 getLine)

    let todasAsPosicoes = [posEscola, posSupermercado, posLojinha]

    let posicaoMinima = minimum todasAsPosicoes

    let posicaoMaxima = maximum todasAsPosicoes

    -- A distância total mínima é o dobro da distância entre o ponto mais extremo
    -- e o ponto menos extremo na linha reta.
    let distanciaTotal = 2 * (posicaoMaxima - posicaoMinima)

    putStrLn (show distanciaTotal)