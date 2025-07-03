contarPedacos ladoAtual totalDePedacos
    -- Caso base: se o chocolate quadrado já tem lado menor que 2cm, então não se divide mais;
    | ladoAtual < 2 = totalDePedacos

    -- Se não, divimos cada pedaço em 4 novos pedacinhos.
    | otherwise = contarPedacos (div ladoAtual 2) (totalDePedacos * 4)

main = do
    ladoInicial <- readLn
    let numPedacos = contarPedacos ladoInicial 1
    putStrLn (show numPedacos)