removeDuplicates :: Eq a => [a] -> [a]
removeDuplicates [] = []
removeDuplicates (x:xs) =
    x : removeDuplicates (filter (/= x) xs)

main :: IO ()
main = do
    putStrLn "Removing duplicates from [1,2,2,3,3,3,4]:"
    print (removeDuplicates [1,2,2,3,3,3,4])
