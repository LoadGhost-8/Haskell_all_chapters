mergeLists :: Ord a => [a] -> [a] -> [a]
mergeLists [] ys = ys
mergeLists xs [] = xs
mergeLists (x:xs) (y:ys)
    | x < y     = x : mergeLists xs (y:ys)
    | otherwise = y : mergeLists (x:xs) ys

main :: IO ()
main = do
    putStrLn "Enter first sorted list (numbers separated by spaces):"
    list1 <- getLine
    putStrLn "Enter second sorted list (numbers separated by spaces):"
    list2 <- getLine
    let a = map read (words list1) :: [Int]
    let b = map read (words list2) :: [Int]
    putStrLn ("Merged sorted list: " ++ show (mergeLists a b))
