import Data.List (maximum, intercalate)
main :: IO ()
main = do
    -- Não é necessário o número de brinquedos para resolver o problema.
    _ <- getLine

    inputVotacaoStr <- getLine

    let votacao = map read (words inputVotacaoStr) :: [Int]

    let h = maximum votacao

    let graphLines =
            [
              intercalate " "
                  [ if voto >= alturaNivel then "1" else "0"
                  | voto <- votacao ]
            | alturaNivel <- [h, h-1 .. 1]
            ]

    mapM_ putStrLn graphLines