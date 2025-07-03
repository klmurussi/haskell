main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int

    let camila = a + b + c - minimum [a, b, c] - maximum [a, b, c]
    print camila
