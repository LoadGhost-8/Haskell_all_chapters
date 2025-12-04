module SumNonEmpty (sumNonEmpty) where

sumNonEmpty :: [Int] -> Int
sumNonEmpty [] = handleEmpty
sumNonEmpty xs = sum xs


handleEmpty :: Int
handleEmpty = error "List is empty! Cannot compute sum."


main :: IO ()
main = do
    let nums = [1, 2, 3]
    putStrLn $ "Sum: " ++ show (sumNonEmpty nums)
