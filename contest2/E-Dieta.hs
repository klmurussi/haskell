calcularCaloriasRefeicao :: Int -> Int -> Int -> Int
calcularCaloriasRefeicao proteinas gorduras carboidratos =
    -- Cada grama de proteína e carboidrato tem 4 calorias, e cada grama de gordura tem 9 calorias.
    (proteinas * 4) + (gorduras * 9) + (carboidratos * 4)

main :: IO ()
main = do
    inputStr <- getLine
    let [qtdRefeicoes, limiteCalorias] = map read (words inputStr) :: [Int]

    tabelaNutricional <- sequence (replicate qtdRefeicoes getLine)

    let caloriasPorRefeicao =
            map (\refeicaoStr ->
                let [proteinas, gorduras, carboidratos] = map read (words refeicaoStr) :: [Int]
                in calcularCaloriasRefeicao proteinas gorduras carboidratos
            ) tabelaNutricional

    let totalCaloriasConsumidas = sum caloriasPorRefeicao

    let caloriasRestantes = limiteCalorias - totalCaloriasConsumidas

    putStrLn (show caloriasRestantes)