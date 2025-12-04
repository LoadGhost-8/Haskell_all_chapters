productList :: [Int] -> Int
productList = foldl (*) 1

main :: IO ()
main = do
    print (productList [1,2,3,4,5])
    print (productList [2,3,4])
