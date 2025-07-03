main :: IO ()
main = do
    quantidades <- map read . words <$> getLine :: IO [Int]

    case quantidades of
        [xicarasDeFarinha, ovos, colheresDeLeite] -> do
            let bolosPorFarinha = div xicarasDeFarinha 2    -- Cada bolo usa 2 xícaras de farinha
            let bolosPorOvos    = div ovos 3                -- Cada bolo usa 3 ovos
            let bolosPorLeite   = div colheresDeLeite 5     -- Cada bolo usa 5 colheres de sopa de leite

            -- O número máximo de bolos é referente a qual ingrediente pode ser usado menos vezes.
            let maxBolos = min bolosPorFarinha (min bolosPorOvos bolosPorLeite)

            putStrLn (show maxBolos)

        _      -> putStrLn "Entrada inválida. Por favor, digite três números inteiros (A B C)."