insertionSort :: [Int] -> [Int]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)

insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y:ys)
    | x <= y    = x : y : ys
    | otherwise = y : insert x ys

main :: IO ()
main = do
    putStrLn "Sorting [9,3,1,5,2]:"
    print (insertionSort [9,3,1,5,2])
