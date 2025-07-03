main :: IO ()
main = do
    numPizzasGrandes <- readLn :: IO Int
    numPizzasPequenas <- readLn :: IO Int

    -- Cada pizza grande tem 8 fatias.
    -- Cada pizza pequena tem 4 fatias.
    let totalFatias = (numPizzasGrandes * 8) + (numPizzasPequenas * 4)

    -- Larissa e sua mãe consomem 1 fatia cada, totalizando 2 fatias.
    -- O número restante de fatias é o número máximo de amigos que podem ser convidados.
    let quantidadeAmigos = totalFatias - 2

    putStrLn (show quantidadeAmigos)