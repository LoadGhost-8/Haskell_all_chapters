digits :: Int -> [Int]
digits n
    | n < 10    = [n]
    | otherwise = digits (n `div` 10) ++ [n `mod` 10]

main :: IO ()
main = do
    print (digits 12345)
    print (digits 907)
