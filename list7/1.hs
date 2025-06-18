import Data.Char (isLower)
import Data.Char (digitToInt)
import Data.Char (isOctDigit)

count :: String -> Int
count = length . filter (isLower . last) . words

inverses :: [Int] -> [Double]
inverses = map (1 /) . map fromIntegral . filter (/= 0)

odds :: Int -> Int
odds = length . filter odd . map digitToInt . show

isOctNumber :: Int -> Bool
isOctNumber = all isOctDigit . show