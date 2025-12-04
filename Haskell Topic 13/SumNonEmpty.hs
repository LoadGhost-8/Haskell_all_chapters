module SumNonEmpty (sumNonEmpty) where
sumNonEmpty :: [Int] -> Int
sumNonEmpty [] = error "List is empty! Cannot compute sum."
sumNonEmpty xs = sum xs

main :: IO ()
main = do
    let nums = [1, 2, 3, 4, 5]
    putStrLn $ "Sum of non-empty list: " ++ show (sumNonEmpty nums)
