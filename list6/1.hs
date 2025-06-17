-- retorna o segundo elemento da lista
second :: [a] -> Maybe a
second list
  | length list < 2 = Nothing
  | otherwise       = Just (head (tail list))

-- retorna todos os elementos da lista, tirando o primeiro e o último
body :: [a] -> Maybe [a]
body list
    | length list < 3 = Nothing
    | otherwise       = Just (take (length list - 2) (drop 1 list))

-- retorna o elemento do meio da lista
median :: [a] -> Maybe a
median xs
  | null xs   = Nothing
  | otherwise = Just (head (drop mid xs))
  where
    mid = (length xs - 1) `div` 2