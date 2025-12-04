module Main where


safeProduct :: [Maybe Int] -> Maybe Int
safeProduct xs = fmap product (sequenceA xs)


main :: IO ()
main = do
    putStrLn "HC19T3: Testing safeProduct"
    print (safeProduct [Just 2, Just 3, Just 4])     
    print (safeProduct [Just 5, Nothing, Just 10])  
    print (safeProduct [])    