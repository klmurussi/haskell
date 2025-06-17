parity :: Int -> Int
parity n
  | n == 0    = 0
  | n == 1    = 1
  | otherwise = parity (n - 2)

remainder :: Int -> Int -> Int
remainder a b
    | a < b     = a
    | a == b    = 0
    | otherwise = remainder (a - b) b

quotient :: Int -> Int -> Int
quotient a b
    | a < b     = 0
    | a == b    = 1
    | otherwise = 1 + quotient (a - b) b

greater_common_divisor :: Int -> Int -> Int
greater_common_divisor a 0 = a
greater_common_divisor a b
    | a < b     = greater_common_divisor b a
    | otherwise = greater_common_divisor b (a - b)

semifactorial :: Int -> Int
semifactorial 0 = 1
semifactorial 1 = 1
semifactorial n = n * semifactorial(n-2)

power :: Int -> Int -> Int
power a n
    | n == 1      = a
    | otherwise   = power (a*a) (n-1)

sum_of_first_n :: Int -> Int 
sum_of_first_n n
    | n == 1        = 1
    | otherwise     = n + sum_of_first_n (n-1)

sum_of_first_n_squares :: Int -> Int
sum_of_first_n_squares n
    | n == 1        = 1
    | otherwise     = (n*n) + sum_of_first_n_squares (n-1)

arithmetic_progression_sum :: Int -> Int -> Int -> Int
arithmetic_progression_sum a r n
    | n <= 0    = 0
    | otherwise = a + arithmetic_progression_sum (a + r) r (n - 1)

geometric_progression_sum :: Int -> Int -> Int -> Int
geometric_progression_sum a q n
    | n <= 0    = 0
    | otherwise = a + geometric_progression_sum (a * q) q (n - 1)

-- binomial :: Int -> Int -> Int
-- binomial n m
count_vowels :: String -> Int
count_vowels s
    | null s    = 0
    | otherwise = (if isVowel (head s) then 1 else 0) + count_vowels (tail s)
  where
    isVowel c = c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'